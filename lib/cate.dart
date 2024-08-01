import 'package:flutter/material.dart';
import 'serv.dart';

List<String> ca = ['Pasta','Pizza'];
List<String> cat = ['italian pasta','italian pizza'];
List<String> img = ['image/pasta.jpeg','image/pizza.jpeg'];
class food extends StatelessWidget {
  const food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading:
        IconButton(
            onPressed: () {
              Navigator.pop(context);},
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Food",
          style: TextStyle(color: Colors.white, fontSize: 35),),),
      body:Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/background.jpeg'),
                fit: BoxFit.cover,
              )),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              itemCount: 2,
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
                    ' ${ca[i]}',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    cat[i],
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                  onTap: () {
                    if (i==0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Srv3(),
                          ));}
                    else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Srv4(),
                          ));}},
                ),
              ))) ,
    );
  }
}
List<String> d_ca = ['Hot Drinks', 'Cold Drinks'];
List<String> d_cat = ['caffien','fresh'];
List<String> d_img = ['image/hot.jpeg', 'image/Iced.jpeg'];
class drink extends StatelessWidget {
  const drink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading:
        IconButton(
            onPressed: () {
              Navigator.pop(context);},
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Drinks",
          style: TextStyle(color: Colors.white, fontSize: 35),),),
      body:Container(
          decoration: BoxDecoration(
              color: Colors.brown,
              image: DecorationImage(
                image: AssetImage('image/background.jpeg'),
                fit: BoxFit.cover,
              )),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, i) => Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown,
                    backgroundImage: AssetImage(
                      d_img[i],
                    ),
                    radius: 35,
                  ),
                  title: Text(
                    ' ${d_ca[i]}',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    d_cat[i],
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                  onTap: () {
                    if (i==0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Srv0(),
                          ));}
                    else  {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Srv1(),
                          ));}},
                ),
              ))) ,
    );}}
List<String> de_ca = ['Ice cream'];
List<String> de_cat = ['All flavour'];
List<String> de_img = ['image/vanilla.jpeg'];
class dessert extends StatelessWidget {
  const dessert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading:
        IconButton(
            onPressed: () {
              Navigator.pop(context);},
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Dessert",
          style: TextStyle(color: Colors.white, fontSize: 35),),),
      body:Container(
          decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/background.jpeg'),
                fit: BoxFit.cover,
              )),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, i) => Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown,
                    backgroundImage: AssetImage(
                      de_img[i],
                    ),
                    radius: 35,
                  ),
                  title: Text(
                    ' ${de_ca[i]}',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    de_cat[i],
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                  onTap: () {
                    if (i==0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Srv2(),
                          ));}
                  },
                ),
              ))) ,
    );
  }
}