import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class signup extends StatefulWidget {
  const signup({super.key});
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController username = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  GlobalKey<FormState> gkey = GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("image/background.jpeg"), fit: BoxFit.fill),
      ),
      height: double.infinity,
      width: 400,
      child: Form(
        key: gkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Let's Sign Up",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Name: ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              child: TextFormField(
                validator: (val) {
                  if (val == "") {
                    return "Can't be empty";
                  }
                },
                controller: username,
                decoration: InputDecoration(
                  hintText: "Enter Your Name ",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade900),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "E-mail ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              child: TextFormField(
                validator: (val) {
                  if (val == "") {
                    return "Can't be empty";
                  }
                },
                controller: mail,
                decoration: InputDecoration(
                  hintText: "Enter Your e-mail ",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade900),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Password ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              child: TextFormField(
                validator: (val) {
                  if (val == "") {
                    return "Can't be empty";
                  }
                },
                controller: pass,
                decoration: InputDecoration(
                  hintText: "Enter Your Password ",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade900),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                height: 50,
                minWidth: 200,
                onPressed: () async {
                  if (gkey.currentState!.validate()) {
                    try {
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: mail.text,
                        password: pass.text,
                      );
                      Navigator.of(context).pushReplacementNamed("home");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  } else {
                    print("not valid");
                  }
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
