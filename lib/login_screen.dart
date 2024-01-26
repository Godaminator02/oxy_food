import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/home_screen.dart';

import 'colors.dart';
import 'constants.dart';
// import 'firebase_options.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email, _password;

  void signIn(BuildContext context) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _email, password: _password)
        .catchError((onError) {})
        .then((authUser) {
      if (authUser.user != null) ;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));

      // 0LIb19m1WGTso6ndc4NMfY89Xe72
      // 0LIb19m1WGTso6ndc4NMfY89Xe72
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      bgImage,
                      height: height * 0.40,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: height * 0.44,
                      width: width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              stops: [0.4, 0.7],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.white])),
                      //color: Colors.orange.withOpacity(0.3),
                    ),
                    Positioned(
                      bottom: 40.0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                                text: appName + "\n",
                                children: [
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 122, 121, 120)),
                                      text: slogan)
                                ])),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Container(
                    child: Text(
                      "  $loginstring ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryColor.withOpacity(0.3),
                            Colors.transparent
                          ],
                        ),
                        border: Border(
                            left: BorderSide(color: primaryColor, width: 5))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    onSaved: (value) {
                      _email = value!;
                    },
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Please Enter Email";
                      } else if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                          .hasMatch(email)) return "its Not a valid Email";
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: primaryColor,
                        ),
                        labelText: "EMAIL ADDRESS",
                        labelStyle:
                            TextStyle(color: primaryColor, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (value) {
                      _password = value!;
                    },
                    validator: (password) {
                      if (password!.isEmpty)
                        return "Please Enter Password";
                      else if (password.length < 8 || password.length > 15)
                        return "Password Length is Incorrect";
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: primaryColor,
                        ),
                        labelText: "PASSWORD",
                        labelStyle:
                            TextStyle(color: primaryColor, fontSize: 16)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forget Password?"),
                  ),
                ),
                Center(
                  child: Container(
                    width: 400.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 33, 159, 38),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          signIn(context);
                          //   if (_email == "test@gmail.com" &&
                          //       _password == "root@1234") {
                          //     FocusScope.of(context).unfocus();
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => const HomeScreen(),
                          //       ),
                          //     );
                          //   } else {
                          //     print("Invalid Login Details");
                          //   }
                          // }
                        }
                      },
                      child: Text(
                        'Login To Your Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account"),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Create Account",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
