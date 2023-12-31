import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/models/hospital_configuration_model.dart';
import 'package:kiosk_desktop_app/models/hospital_list_model.dart';
import 'package:kiosk_desktop_app/providers/configuration_provider.dart';
import '../../widgets/shared/dropdown_input_field.dart';
import '../../widgets/shared/error_modal.dart';
import '../../services/configuration.dart';
import '../../constants/routes.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class ConfigurationScreen extends StatefulWidget {
  const ConfigurationScreen({super.key});

  @override
  State<ConfigurationScreen> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  bool _isLoading = false;
  Future<List<HospitalListModel>> _futureDropdownOptions =
      ConfigurationApiService.fetchHospitals();
  var _dropdownInputValue = null;
  String _dropdownHintText = "Select hospital";
  List<HospitalListModel> _dropdownData = [];

  _onChangeDropdownInput(String? e) {
    print(e);
    setState(() {
      _dropdownInputValue = e as String;
    });
  }

  _showErrorModal(String errMsg) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Error'),
        content: Text(errMsg),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    _futureDropdownOptions = ConfigurationApiService.fetchHospitals();
  }

  Widget build(BuildContext context) {
    final configuration_provider = Provider.of<ConfigurationProvider>(context);

    handleSelectHospital() async {
      setState(() {
        _isLoading = true;
      });
      print(_dropdownInputValue);
      if (_dropdownInputValue == "" ||
          _dropdownInputValue == null ||
          _dropdownInputValue == "Select") {
        sharedErrorModal(
            context: context,
            errorMessage: "Please select an hospital",
            width: 200,
            height: 200);
      } else {
        final apiResponse =
            await ConfigurationApiService.fetchHospitalConfiguration(
                _dropdownInputValue);
        final decodeApiResponse = json.decode(apiResponse.body);
        if (apiResponse.statusCode == 200) {
          final apiAvailableSwitch = decodeApiResponse['AvailableSwitches'];

          // print(json.decode(apiResponse.body));
          configuration_provider.hospitalConfiguration(
            HospitalConfigurationModel(
              HospitalId: decodeApiResponse['HospitalId'],
              Name: decodeApiResponse['Name'],
              AvailableSwitches: apiAvailableSwitch is List
                  ? apiAvailableSwitch.map((data) {
                      return AvailableSwitchModel(
                        Provider: data['Provider'],
                        DepositPublicKey: data['DepositPublicKey'],
                        InvoicePublicKey: data['InvoicePublicKey'],
                      );
                    }).toList()
                  : [],
            ),
          );
          Navigator.pushNamed(context, CONFIGURATION_SCREEN_SUCCESS_ROUTE);
        } else {
          _showErrorModal(decodeApiResponse['message']);
        }
      }
      setState(() {
        _isLoading = false;
      });
    }

    return Visibility(
      child: FutureBuilder(
          future: _futureDropdownOptions,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text('Error: ${snapshot.error}'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _futureDropdownOptions =
                              ConfigurationApiService.fetchHospitals();
                        });
                      },
                      child: Text('Refresh'),
                    ),
                  ],
                ),
              );
            } else {
              _dropdownData = snapshot.data;
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 40, 29),
                      child: const Text(
                        "Kiosk configuration set up",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Avenir',
                          // height: 44,
                          letterSpacing: -0.5,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF1E2024),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 98),
                        child: const Text(
                          "Enter the kiosk hospital to complete set up",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Avenir',
                            letterSpacing: -0.25,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF636B75),
                          ),
                        )),
                    Container(
                      width: 300,
                      height: 72,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffA7A7A7),
                            width: 0.7,
                          )),
                      padding: EdgeInsets.fromLTRB(10, 25, 10, 0),
                      child: SharedDropdownInput(
                        hintText: _dropdownHintText,
                        value: _dropdownInputValue,
                        options: _dropdownData,
                        onChanged: _onChangeDropdownInput,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 75, 0, 0),
                      width: 300,
                      height: 64,
                      child: ElevatedButton(
                        onPressed: _dropdownInputValue == "Select" ||
                                _dropdownInputValue == null ||
                                _isLoading == true
                            ? null
                            : handleSelectHospital,
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            _dropdownInputValue == "Select" ||
                                    _dropdownInputValue == null
                                ? Color(0xffB6DAF6)
                                : Color(0xff1B88DF),
                          ),
                        ),
                        child: _isLoading
                            ? const SizedBox(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                                height: 20.0,
                                width: 20.0,
                              )
                            : const Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontFamily: 'Avenir',
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                      ),
                    )
                  ],
                ),
              );
            }
          }),
    );
  }
}
