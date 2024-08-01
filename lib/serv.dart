import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';
import 'order.dart';
double sum = 0;
List<Serv0> l=[] ;
List<Serv0> en (List<Serv0> a){
  int i =0;
  for(int k=0; a[k].quantity ==0; k++) {
    a.remove(k);
  }
  return a ;
}
int qu=0;
List le=[];
class Serv0 {
  String name;
  double price;
  String imagePath;
  int quantity;

  Serv0({
    required this.name,
    required this.price,
    required this.imagePath,
    this.quantity = 0,
  });
}
Serv0 zer=Serv0(name: " ", price:0, imagePath:" ",quantity: 0);
List<Serv0> hotdrinks = [
  Serv0(
    name: 'tea',
    price: 5,
    imagePath: 'image/tea.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'coffee',
    price: 10,
    imagePath: 'image/Americano.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'late',
    price: 20,
    imagePath: 'image/latte.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'mocha',
    price: 20,
    imagePath: 'image/moche.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Espresso',
    price: 30,
    imagePath: 'image/Espresso.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Cappunccino',
    price: 50,
    imagePath: 'image/Cappuccino.jpeg',
    quantity: 0,
  ),
  Serv0(
      name: 'HotChocolate',
      price: 20,
      imagePath: 'image/hotchocolate.jpeg',
      quantity: 0
  ),
  Serv0(
    name: 'Americano',
    price: 20,
    imagePath: 'image/Americano.jpeg',
    quantity: 0,
  ),
];
List<Serv0> colddrinks = [
  Serv0(
    name: 'Ice tea',
    price: 25,
    imagePath: 'image/iced tea.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Iced coffee',
    price: 40,
    imagePath: 'image/iced coffee.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'iced latte',
    price: 60,
    imagePath: 'image/ice latte.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'iced mocha',
    price: 60,
    imagePath: 'image/iced moche.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'pepsi',
    price: 20,
    imagePath: 'image/pepsi.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'sprite',
    price: 20,
    imagePath: 'image/sprite.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Red Bull',
    price: 40,
    imagePath: 'image/red bull.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Sting',
    price: 35,
    imagePath: 'image/sting.jpeg',
    quantity: 0,
  ),
];
List<Serv0> icecream = [
  Serv0(
    name: 'Vanilla',
    price: 25,
    imagePath: 'image/vanilla.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'chocolate',
    price: 25,
    imagePath: 'image/chocolate.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'strawberry',
    price: 30,
    imagePath: 'image/strawberry.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Coffee',
    price: 60,
    imagePath:'image/chocolate.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Banana',
    price: 20,
    imagePath: 'image/banana.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Lemon',
    price: 20,
    imagePath: 'image/lemon.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Mango',
    price: 40,
    imagePath: 'image/mango.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'blueberry',
    price: 35,
    imagePath: 'image/blueberry.jpeg',
    quantity: 0,
  ),
];
List<Serv0> pasta = [
  Serv0(
    name: 'Red sauce',
    price: 85,
    imagePath: 'image/red sauce.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Shrimp Pasta',
    price: 130,
    imagePath: 'image/Shrimp pasta.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Alfredo Pasta',
    price: 110,
    imagePath: 'image/alfredo.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Garlic Lemon Pasta',
    price: 90,
    imagePath:'image/garlic lemon.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Beef Stroganoff',
    price: 120,
    imagePath: 'image/Beef Stroganoff.jpeg',
    quantity: 0,
  ),
];
List<Serv0> pizza = [
  Serv0(
    name: 'Chicken Pizza',
    price: 80,
    imagePath: 'image/Chicken Pizza.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'pepperoni Pizza',
    price: 85,
    imagePath: 'image/pepperoni.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Tuna pizza',
    price: 80,
    imagePath: 'image/tuna.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Hot Dog Pizza',
    price: 75,
    imagePath:'image/hot dog.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Salami Pizza',
    price: 90,
    imagePath: 'image/Salami Pizza.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Shrimp Pizza',
    price: 100,
    imagePath: 'image/Shrimp Pizza.jpeg',
    quantity: 0,
  ),
  Serv0(
    name: 'Cheese pizza',
    price: 70,
    imagePath: 'image/cheese.jpeg',
    quantity: 0,
  ),
];


class Srv0 extends StatefulWidget {
  const Srv0({super.key});
  @override
  State<Srv0> createState() => _Srv0State();
}
class _Srv0State extends State<Srv0> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Hot drinks',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => order(),));},
              icon: Icon(Icons.list_alt_rounded))
        ],),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('image/background.jpeg'),
                fit: BoxFit.fill)
        ),
        height: 900,
        child: ListView.builder(
          itemCount: hotdrinks.length,
          itemBuilder: (context, index) {
            Serv0 drink = hotdrinks[index];
            return ListTile(
              leading: Image.asset(
                drink.imagePath,
                width: 50,
                height: 50,
              ),
              title: Text(drink.name),
              subtitle: Row(children: [
                IconButton(onPressed: (){
                  setState(() {
                    drink.quantity = drink.quantity-1 ;
                    sum = sum - drink.price ;
                    qu=drink.quantity;
                    le.remove(drink.name);
                  });
                }, icon: Icon(Icons.minimize)),
                Text("Quantity: ${drink.quantity}"),
                IconButton(onPressed: (){
                  setState(() {
                    drink.quantity = drink.quantity+1 ;
                    sum = sum + drink.price ;
                    qu=drink.quantity;
                    le.add(drink.name);
                  });
                }, icon: Icon(Icons.add))
              ],
              ),
              trailing: Text('Price: ${drink.price}'),
            );
          },
        ),
      ),
    );

  }
}
class Srv1 extends StatefulWidget {
  const Srv1({super.key});

  @override
  State<Srv1> createState() => _Srv1State();
}
class _Srv1State extends State<Srv1> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Cold drinks',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
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
            image: DecorationImage(image: AssetImage('image/background.jpeg'),
                fit: BoxFit.fill)
        ),
        child: ListView.builder(
          itemCount: colddrinks.length,
          itemBuilder: (context, index) {
            Serv0 drink = colddrinks[index];
            return ListTile(
              leading: Image.asset(
                drink.imagePath,
                width: 50,
                height: 50,
              ),
              title: Text(drink.name),
              subtitle: Row(children: [
                IconButton(onPressed: (){
                  setState(() {
                    drink.quantity = drink.quantity-1 ;
                    sum = sum - drink.price ;
                    qu=drink.quantity;
                    le.remove(drink.name);
                  });
                }, icon: Icon(Icons.minimize)),
                Text("Quantity: ${drink.quantity}"),
                IconButton(onPressed: (){
                  setState(() {
                    drink.quantity = drink.quantity+1 ;
                    sum = sum + drink.price ;
                    qu=drink.quantity;
                    le.add(drink.name);
                  });
                }, icon: Icon(Icons.add))
              ],
              ),
              trailing: Text('Price: ${drink.price}'),
            );
          },
        ),
      ),
    );
  }
}
class Srv2 extends StatefulWidget {
  const Srv2({super.key});

  @override
  State<Srv2> createState() => _Srv2State();
}
class _Srv2State extends State<Srv2> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Ice cream',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
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
      body: Container(decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('image/background.jpeg'),
              fit: BoxFit.fill)
      ),
        child: ListView.builder(
          itemCount: icecream.length,
          itemBuilder: (context, index) {
            Serv0 drink = icecream[index];

            return ListTile(
              leading: Image.asset(
                drink.imagePath,
                width: 50,
                height: 50,
              ),
              title: Text(drink.name),
              subtitle: Row(children: [
                IconButton(onPressed: (){
                  setState(() {
                    drink.quantity = drink.quantity-1 ;
                    sum = sum - drink.price ;
                    qu=drink.quantity;
                    le.remove(drink.name);
                  });
                }, icon: Icon(Icons.minimize)),
                Text("Quantity: ${drink.quantity}"),
                IconButton(onPressed: (){
                  setState(() {
                    drink.quantity = drink.quantity+1 ;
                    sum = sum + drink.price ;
                    qu=drink.quantity;
                    le.add(drink.name);
                  });
                }, icon: Icon(Icons.add))
              ],
              ),
              trailing: Text('Price: ${drink.price}'),
            );
          },
        ),
      ),
    );

  }
}
class Srv3 extends StatefulWidget {
  const Srv3({super.key});

  @override
  State<Srv3> createState() => _Srv3State();
}
class _Srv3State extends State<Srv3> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Pasta',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
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
      body: Container(decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('image/background.jpeg'),
              fit: BoxFit.fill)
      ),
        child: ListView.builder(
          itemCount: pasta.length,
          itemBuilder: (context, index) {
            Serv0 pas = pasta[index];

            return ListTile(
              leading: Image.asset(
                pas.imagePath,
                width: 50,
                height: 50,
              ),
              title: Text(pas.name),
              subtitle: Row(children: [
                IconButton(onPressed: (){
                  setState(() {
                    pas.quantity = pas.quantity-1 ;
                    sum = sum - pas.price ;
                    qu=pas.quantity;
                    le.remove(pas.name);
                  });
                }, icon: Icon(Icons.minimize)),
                Text("Quantity: ${pas.quantity}"),
                IconButton(onPressed: (){
                  setState(() {
                    pas.quantity = pas.quantity+1 ;
                    sum = sum + pas.price ;
                    qu=pas.quantity;
                    le.add(pas.name);
                  });
                }, icon: Icon(Icons.add))
              ],
              ),
              trailing: Text('Price: ${pas.price}'),
            );
          },
        ),
      ),
    );

  }
}
class Srv4 extends StatefulWidget {
  const Srv4({super.key});

  @override
  State<Srv4> createState() => _Srv4State();
}
class _Srv4State extends State<Srv4> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Pizza',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => order(),
                    ));
              },
              icon: Icon(Icons.list_alt_rounded))],),
      body: Container(decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('image/background.jpeg'),
              fit: BoxFit.fill)
      ),
        child: ListView.builder(
          itemCount: pizza.length,
          itemBuilder: (context, index) {
            Serv0 pizz = pizza[index];

            return ListTile(
              leading: Image.asset(
                pizz.imagePath,
                width: 50,
                height: 50,
              ),
              title: Text(pizz.name),
              subtitle: Row(children: [
                IconButton(onPressed: (){
                  setState(() {
                    pizz.quantity = pizz.quantity-1 ;
                    sum = sum - pizz.price ;
                    qu=pizz.quantity;
                    le.remove(pizz.name);
                  });
                }, icon: Icon(Icons.minimize)),
                Text("Quantity: ${pizz.quantity}"),
                IconButton(onPressed: (){
                  setState(() {
                    pizz.quantity = pizz.quantity+1 ;
                    sum = sum + pizz.price ;
                    qu=pizz.quantity;
                    le.add(pizz.name);
                  });
                }, icon: Icon(Icons.add))
              ],
              ),
              trailing: Text('Price: ${pizz.price}'),
            );
          },
        ),
      ),
    );

  }
}