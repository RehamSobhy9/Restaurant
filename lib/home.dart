import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'cate.dart';
import 'order.dart';
import 'login.dart';

List<String> maincat = ['Food','Drinks','Dessert'];
List<String> maincata = ['Italian food','Fresh juices','dessert'];
List<String> img = ['image/food.jpeg', 'image/drinks.jpeg', 'image/dessert.jpeg'];

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading:
        IconButton(
            onPressed:()async {
              await FirebaseAuth.instance.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => login(),
                  ));
            },
            icon: Icon(Icons.exit_to_app)),
        title: const Text(
          "Main Categories",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => order(),
                    ));
              },
              icon: Icon(Icons.list_alt_rounded))
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
              color: Colors.brown,
              image: DecorationImage(
                image: AssetImage('image/background.jpeg'),
                fit: BoxFit.cover,
              )),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, i) => Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      img[i],
                    ),
                    radius: 35,
                  ),
                  title: Text(
                    ' ${maincat[i]}',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    maincata[i],
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                  onTap: () {
                    if (i==0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => food(),
                          ));
                    }
                    else if(i==1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => drink(),
                          ));
                    }
                    else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => dessert(),
                          ));
                    }
                  },
                ),
              ))) ,
    );
  }
}
