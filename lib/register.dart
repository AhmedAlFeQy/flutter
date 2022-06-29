import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

class Register extends StatelessWidget {
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
    TextEditingController emailController = new TextEditingController();
    TextEditingController PassworedController = new TextEditingController();
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
        child: new Text(
          "Check",
          style: TextStyle(color: Colors.white70),
        ));
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: 50,
              child: Image(
                image: NetworkImage("assets/Images/4.png"),
                fit: BoxFit.fitHeight,
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Register",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIconColor: Colors.black,
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter Your Email",
                contentPadding: EdgeInsets.all(20),
                helperStyle: TextStyle(
                  color: Colors.black,
                ),
                fillColor: Colors.teal,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
              ),
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: PassworedController,
              decoration: InputDecoration(
                prefixIconColor: Colors.black,
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter Your Pasword",
                contentPadding: EdgeInsets.all(20),
                helperStyle: TextStyle(
                  color: Colors.black,
                ),
                fillColor: Colors.teal,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.teal, width: 2)),
              ),
              onChanged: (value) {},
            ),
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
                    child: Text('Register  '),
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
                    child: Text('Register with Google account '),
                  ))),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 50.0),
            child: Row(
              children: [
                const Text("Have an Account?",
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
                      return Login();
                    }));
                  },
                  child: Text('Sign in '),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
