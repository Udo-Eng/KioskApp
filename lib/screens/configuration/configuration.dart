import 'package:flutter/material.dart';
import '../../widgets/shared/dropdown_input_field.dart';
import '../../widgets/shared/error_modal.dart';
import '../../services/configuration.dart';
import '../../constants/routes.dart';

class ConfigurationScreen extends StatefulWidget {
  const ConfigurationScreen({super.key});

  @override
  State<ConfigurationScreen> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  bool _isLoading = false;
  List<String> _dropdownOptions = ["Select", "Moses", "Dayo", "M"];
  var _dropdownInputValue = null;
  String _dropdownHintText = "Select hospital";

  _onChangeDropdownInput(String? e) {
    setState(() {
      _dropdownInputValue = e as String;
    });
  }

  _handleSelectHospital() {
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
      Navigator.pushNamed(context, CONFIGURATION_SCREEN_SUCCESS_ROUTE);
    }
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _loadData();
  }

  void dispose() {
    _isLoading = false;
    super.dispose();
  }

  Future<void> _loadData() async {
    final apiResponse = await fetchHospitals();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Visibility(
      visible: _isLoading,
      child: FutureBuilder(
          future: fetchHospitals(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot);
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
                    // child: SharedDropdownInput(
                    //   hintText: _dropdownHintText,
                    //   value: _dropdownInputValue,
                    //   options: _dropdownOptions,
                    //   onChanged: _onChangeDropdownInput,
                    // ),
                    child: SharedDropdownInput(
                      hintText: _dropdownHintText,
                      value: _dropdownInputValue,
                      options: _dropdownOptions,
                      onChanged: _onChangeDropdownInput,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 75, 0, 0),
                    width: 300,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: _dropdownInputValue == "Select" ||
                              _dropdownInputValue == null
                          ? null
                          : _handleSelectHospital,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          _dropdownInputValue == "Select" ||
                                  _dropdownInputValue == null
                              ? Color(0xffB6DAF6)
                              : Color(0xff1B88DF),
                        ),
                      ),
                      child: const Text(
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
          }),
    );
  }
}
