import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        title: const Text(
          'Sweets',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 26),
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Icon(
              FontAwesomeIcons.sortAmountDown,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                label: 'Cart'),
          ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.teal,
                            boxShadow: const [
                              BoxShadow(color: Colors.white24, blurRadius: 2.0),
                            ]),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FittedBox(
                                child: Text(
                              'All',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            )))),
                    const SizedBox(
                      width: 24,
                    ),
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.white24, blurRadius: 2.0),
                          ]),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text('Chocolate'),
                          )),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.white24, blurRadius: 2.0),
                          ]),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text('Biscuits'),
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.white24, blurRadius: 2.0),
                          ]),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text('Biscuits '),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 135,
                      width: 135,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images-na.ssl-images-amazon.com/images/I/51W2GRYY5kL._SY300_QL70_ML2_.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 135,
                      width: 135,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images-na.ssl-images-amazon.com/images/I/51W2GRYY5kL._SY300_QL70_ML2_.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 28, top: 15, right: 15),
                      child: Column(
                        children: [
                          Text('Amul Chocolate '),
                          Text('Box'),
                          Text('22.00 SR')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 59, top: 15),
                      child: Column(
                        children: [
                          Text('Amul Chocolate '),
                          Text('Box'),
                          Text('22.00 SR')
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images-na.ssl-images-amazon.com/images/I/51W2GRYY5kL._SY300_QL70_ML2_.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images-na.ssl-images-amazon.com/images/I/51W2GRYY5kL._SY300_QL70_ML2_.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ]),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 28, top: 15, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Amul Chocolate '),
                          Text('Box'),
                          Text('22.00 SR')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 59, top: 15),
                      child: Column(
                        children: [
                          Text('Amul Chocolate '),
                          Text('Box'),
                          Text('22.00 SR')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
