import 'package:demo/screens/mainscreen.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final countryPicker = const FlCountryCodePicker();
  bool passwordVisible = false;
  CountryCode? countryCode;
  TextEditingController passwordController = TextEditingController();
  bool userExists = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.orange),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40.0),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Welome back',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40.0),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0),
                    )),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 15.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Enter Phone Number',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              TextField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                  border: InputBorder.none,
                                  prefixIcon: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 6),
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            final code = await countryPicker
                                                .showPicker(context: context);
                                            setState(() {
                                              countryCode = code;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Container(
                                                child: countryCode != null
                                                    ? countryCode!.flagImage()
                                                    : null,
                                              ),
                                              SizedBox(width: 8),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 6),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                    countryCode?.dialCode ??
                                                        "+91",
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0))),
                              backgroundColor: Colors.white,
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => Padding(
                                padding: EdgeInsets.only(
                                    top: 20,
                                    right: 20,
                                    left: 20,
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      'Enter Password',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      child: TextField(
                                        controller: passwordController,
                                        obscureText: passwordVisible,
                                        decoration: InputDecoration(
                                          fillColor: Color.fromARGB(
                                              255, 230, 225, 225),
                                          border: InputBorder.none,
                                          hintText: "Password",
                                          suffixIcon: IconButton(
                                            icon: Icon(passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                            onPressed: () {
                                              setState(
                                                () {
                                                  passwordVisible =
                                                      !passwordVisible;
                                                },
                                              );
                                            },
                                          ),
                                          alignLabelWithHint: false,
                                          filled: true,
                                        ),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.done,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Forgot Password ? ',
                                          style: TextStyle(
                                            color: Colors.red,
                                          )),
                                    ),
                                    SizedBox(height: 30),
                                    Center(
                                      child: InkWell(
                                        onTap: () {
                                          if (passwordController.text ==
                                              'test@78563') {
                                            // Password is correct, navigate to the main screen
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MainScreen()));
                                          } else {
                                            // Password is incorrect, show an error message
                                            print('Invalid Password');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content:
                                                    Text('Invalid password'),
                                              ),
                                            );
                                          }
                                        },
                                        child: Container(
                                            width: 150.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Verify Password',
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Container(
                              width: 200.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Proceed',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
