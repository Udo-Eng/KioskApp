import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/models/hospital_configuration_model.dart';
import 'package:kiosk_desktop_app/models/hospital_list_model.dart';
import 'package:kiosk_desktop_app/providers/configuration_provider.dart';
import 'package:kiosk_desktop_app/providers/hospital_list_provider.dart';
// import 'package:kiosk_desktop_app/routes/key.dart';
import 'package:kiosk_desktop_app/widgets/shared/error_modal.dart';
import 'package:kiosk_desktop_app/services/configuration.dart';
import 'package:kiosk_desktop_app/constants/routes.dart';
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
  String? _dropdownInputValue = null;
  final String _dropdownHintText = "Select hospital";
  List<HospitalListModel> _dropdownData = [];

  _onChangeDropdownInput(String? e) {
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
    final hospital_list_provider = Provider.of<HospitalListProvider>(context);

    handleSelectHospital() async {
      setState(() {
        _isLoading = true;
      });

      if (_dropdownInputValue == "" || _dropdownInputValue == "Select") {
        sharedErrorModal(
            context: context,
            errorMessage: "Please select an hospital",
            width: 200,
            height: 200);
      } else {
        final apiResponse =
            await ConfigurationApiService.fetchHospitalConfiguration(
                _dropdownInputValue as String);
        final decodeApiResponse = json.decode(apiResponse.body);
        if (apiResponse.statusCode == 200) {
          hospital_list_provider.addHospitals(_dropdownData);
          final apiAvailableSwitch = decodeApiResponse['AvailableSwitches'];

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
          setState(() {
            _isLoading = false;
          });

          Navigator.pushNamed(context, CONFIGURATION_SCREEN_SUCCESS_ROUTE);
        } else {
          _showErrorModal(decodeApiResponse['message']);
          setState(() {
            _isLoading = false;
          });
        }
      }
    }

    return Visibility(
      child: FutureBuilder(
          future: _futureDropdownOptions,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Text('Error: ${snapshot.error}'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _futureDropdownOptions =
                              ConfigurationApiService.fetchHospitals();
                        });
                      },
                      child: const Text('Refresh'),
                    ),
                  ],
                ),
              );
            } else {
              _dropdownData = snapshot.data;

              return Column(
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
                    // child: SharedDropdownInput(
                    //   hintText: _dropdownHintText,
                    //   value: _dropdownInputValue,
                    //   options: _dropdownData,
                    //   onChanged: _onChangeDropdownInput,
                    // ),
                    child: DropdownButton<String>(
                      hint: Text(_dropdownHintText),
                      elevation: 10,
                      itemHeight: 64,
                      menuMaxHeight: 300,
                      underline: const Text(""),
                      value: _dropdownInputValue,
                      onChanged: _onChangeDropdownInput,
                      isDense: true,
                      isExpanded: true,
                      focusColor: Colors.blue,
                      iconSize: 0,
                      dropdownColor: Colors.white,
                      style: const TextStyle(
                        color: Color(0xff828282),
                        // backgroundColor: Colors.white,
                      ),
                      items: _dropdownData.map<DropdownMenuItem<String>>(
                          (HospitalListModel hospital) {
                        return DropdownMenuItem(
                          value: hospital.ID,
                          child: Text(hospital.Name),
                        );
                      }).toList(),
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
              );
            }
          }),
    );
  }
}
