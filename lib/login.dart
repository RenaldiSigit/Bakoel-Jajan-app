import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Forms createState() => Forms();
}

class Forms extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/loginlogo.png'))),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Form(
                  key: _formKey,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 237, 151, 93),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 237, 151, 93))),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 237, 151, 93))),
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: "Username"),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: const TextField(
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 237, 151, 93),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 237, 151, 93))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 237, 151, 93))),
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: "Password"),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(250, 55),
                              primary: Color.fromARGB(
                                  255, 237, 151, 93), // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const HomeScreen();
                                }));
                              }
                            },
                            child: const Text("login"))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
