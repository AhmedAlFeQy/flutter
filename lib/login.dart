import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:untitled/register.dart';

class Login extends StatelessWidget {
  TextEditingController phoneController = new TextEditingController();
  String phoneNumber = "";

  void _onCountryChange(CountryCode countryCode) {
    this.phoneNumber = countryCode.toString();
    print("New Country selected: " + countryCode.toString());
  }

  void check() {
    print("Full Text: " + this.phoneNumber + phoneController.text);
  }

  @override
  Widget build(BuildContext context) {
    final phone = new TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: new TextStyle(
        fontSize: 14.0,
        color: Colors.white70,
        fontWeight: FontWeight.w400,
      ),
    );

    final checkBtn = RaisedButton(
        key: null,
        onPressed: check,
        color: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: new Text("Check"));
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: 150,
              child: Image(
                image: NetworkImage("assets/Images/4.png"),
                fit: BoxFit.fitHeight,
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Sign in",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal)),
          ),
          Center(
            child: new ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                children: <Widget>[
                  CountryCodePicker(
                    onChanged: _onCountryChange,
                    initialSelection: 'IT',
                    favorite: ['+39', 'FR'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  SizedBox(height: 16.0),
                  phone,
                  SizedBox(height: 16.0),
                  checkBtn
                ]),
          ),
          Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white70),
                    ),
                    onPressed: () {},
                    child: Text('Sign in '),
                  ))),
          Text(
            "-------------- Or ----------------",
            textAlign: TextAlign.center,
          ),
          Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white70),
                    ),
                    onPressed: () {},
                    child: Text('Sign with Google account '),
                  ))),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              children: [
                const Text("Do not have an Account?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return Register();
                    }));
                  },
                  child: Text('Register here '),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
