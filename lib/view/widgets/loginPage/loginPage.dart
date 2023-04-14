import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _Login();
}

class _Login extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool warnaTombol = false;
  
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
            margin: const EdgeInsets.all(15),
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo2.png'))),
          ),
        ],
      );
    }

    Widget formField() {
      return Form(
        key: formKey,
        child: Center(
          child: Container(
            height: SizeConfig.blockVertical * 40,
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
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                        return 'Enter correct email';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'user@gmail.com',
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
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                        return 'Enter correct password';
                      } else {
                        return null;
                      }
                    },
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
              ],
            ),
          ),
        ),
      );
    }

    Widget buttonPressed() {
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
                if (formKey.currentState!.validate()) {
                  await Future.delayed(
                      const Duration(seconds: 2),
                      () => Navigator.pushNamedAndRemoveUntil(
                          context, '/homePage', (route) => false));
                }
              },
              child: const Center(
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              )),
        ),
      );
    }

    Widget textUnder() {
      return Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(' Dont have an account ?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
          SizedBox(width: SizeConfig.blockHorizontal * 2),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '/registerPage');
              });
            },
            child: const Text('Sign Up',
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
        key: _scaffoldKey,
        body: ListView(
          children: [
            headers(),
            SizedBox(height: SizeConfig.blockVertical * 6),
            formField(),
            SizedBox(height: SizeConfig.blockVertical * 4),
            buttonPressed(),
            SizedBox(height: SizeConfig.blockVertical * 3),
            textUnder()
          ],
        ),
      ),
    );
  }
}
