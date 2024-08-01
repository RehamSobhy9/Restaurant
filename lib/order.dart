import 'package:flutter/material.dart';
import 'main.dart';
import 'serv.dart';

class order extends StatefulWidget {
  const order({super.key});
  @override
  State<order> createState() => _orderState();
}
class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:
        Text('check order', style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/background.jpeg'),
                fit: BoxFit.cover,
              )),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child:
                Text("Your order is${le}",style: TextStyle(color: Colors.black,fontSize: 30,
                    fontWeight: FontWeight.bold),),
              ),
              Container(
                height: 100,
                child: Text(
                  'Total Price is ${sum}LE',
                  style: TextStyle(color: Colors.black, fontSize: 38),
                ),),
            ],
          )),
    );
  }
}