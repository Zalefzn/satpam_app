import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _Register();
}

class _Register extends State<RegisterPage> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController nra = TextEditingController();

  bool warnaTombol = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget headers() {
      return Stack(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(500)),
            child: Container(
                height: SizeConfig.blockVertical * 20,
                width: SizeConfig.blockHorizontal * 40,
                decoration: BoxDecoration(
                  color: bgColor4,
                )),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo2.png'))),
          ),
        ],
      );
    }

    Widget formColumn() {
      return Form(
        key: formKey,
        child: Center(
          child: Container(
            height: SizeConfig.blockVertical * 60,
            width: SizeConfig.blockHorizontal * 75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockVertical * 3),
                    child: const Text('Username',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockVertical * 1),
                  height: SizeConfig.blockVertical * 8,
                  width: SizeConfig.blockHorizontal * 75,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                        return 'Enter correct username';
                      } else {
                        return null;
                      }
                    },
                    controller: username,
                    decoration: InputDecoration(
                      hintText: 'username1777',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockVertical * 3),
                    child: const Text('Email/Phone',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockVertical * 1),
                  height: SizeConfig.blockVertical * 8,
                  width: SizeConfig.blockHorizontal * 75,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter correct email';
                      } else {
                        return null;
                      }
                    },
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'username@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockVertical * 3),
                    child: const Text('Password',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockVertical * 1),
                  height: SizeConfig.blockVertical * 8,
                  width: SizeConfig.blockHorizontal * 75,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                        return 'Enter correct password';
                      } else {
                        return null;
                      }
                    },
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye_rounded,
                          color: Colors.black),
                      hintText: '**********',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockVertical * 3),
                    child: const Text('NRA',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockVertical * 1),
                  height: SizeConfig.blockVertical * 8,
                  width: SizeConfig.blockHorizontal * 75,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty || !RegExp(r'(\d+)').hasMatch(value)) {
                        return 'Enter correct nra';
                      } else {
                        return null;
                      }
                    },
                    controller: nra,
                    decoration: InputDecoration(
                      hintText: '2223476583830',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buttonRegis() {
      return Center(
        child: Container(
          height: SizeConfig.blockVertical * 8,
          width: SizeConfig.blockHorizontal * 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (warnaTombol) ? bgColor3 : bgColor4,
          ),
          child: TextButton(
              onPressed: () async {
                SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.setString('nra', nra.text);
                sharedPreferences.setString('nama', username.text);

                if (await formKey.currentState!.validate()) {
                  setState(() {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/homePage', (route) => false);
                  });
                }

                // setState(() {
                //   Navigator.pushNamedAndRemoveUntil(
                //       context, '/homePage', (route) => false);
                // });
              },
              child: const Text('Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold))),
        ),
      );
    }

    Widget underText() {
      return Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(' Already have an account ?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
          SizedBox(width: SizeConfig.blockHorizontal * 2),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '/loginPage');
              });
            },
            child: const Text('Sign In',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ));
    }

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            headers(),
            SizedBox(height: SizeConfig.blockVertical * 2),
            formColumn(),
            SizedBox(height: SizeConfig.blockVertical * 6),
            buttonRegis(),
            SizedBox(height: SizeConfig.blockVertical * 3),
            underText(),
            SizedBox(height: SizeConfig.blockVertical * 3),
          ],
        ),
      ),
    );
  }
}
