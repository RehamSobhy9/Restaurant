import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'home.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
bool isvisible=false;
var name;
class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  GlobalKey<FormState> Gkey = GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/background.jpeg'), fit: BoxFit.fill)),
        height: 900,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 100, bottom: 20, right: 15, left: 15),
                width: double.infinity,
                alignment: Alignment.center,
                child: CircleAvatar(radius: 75,
                    backgroundImage: AssetImage("image/res.jpeg",)),),
              Container(
                margin: EdgeInsets.all(5),
                child: Text("Welcome Back", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text("Let's Log in", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23, color: Colors.black),),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),),
                height: 200,
                width: 350,
                child: Form(
                    key: Gkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Padding( padding: const EdgeInsets.symmetric(horizontal: 20),child:
                        TextFormField(
                          validator: (val){
                            if(val==""){
                              return "Can't be empty";}},
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffixIcon: Icon(Icons.person),
                              hintText: "Enter your E-mail"),
                        ),
                        TextFormField(
                          validator: (val){
                            if(val==""){
                              return "Can't be empty";}},
                          controller: password,
                          obscureText: !isvisible,
                          enabled: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            suffixIcon:IconButton(onPressed: (){
                              setState(() {
                                isvisible = !isvisible;
                              });
                            }, icon: Icon(isvisible
                                ?Icons.visibility
                                :Icons.visibility_off)),
                            hintText: 'enter your Password',
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 0),
                child: MaterialButton(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.black,
                  height: 50,
                  minWidth: 200,
                  onPressed: ()async {
                   if(Gkey.currentState!.validate()){
                     try {
                       final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                           email: email.text,
                           password: password.text);
                       Navigator.of(context).pushReplacementNamed("home");
                     } on FirebaseAuthException catch (e) {
                       if (e.code == 'user-not-found') {
                         print('No user found for that email.');
                       } else if (e.code == 'wrong-password') {
                         print('Wrong password provided for that user.');
                       }
                     }
                   }else{
                     print("not valid");
                   }
                  },
                  child: Text('Sign in', style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child:
                    Text("Don't have an account?",style: TextStyle(color: Colors.pinkAccent,fontSize: 15,
                        fontWeight: FontWeight.bold),),),
                  Container(child:
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => signup(),));
                            },
                        child:
                        Text("Sign up",style: TextStyle(color: Colors.black,fontSize: 20),)
                  ),
                  )],
              )
            ],
          ),
        ),
      ),
    );
  }
}
