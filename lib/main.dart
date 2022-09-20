import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dairy/cart.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'aboutus.dart';
import 'appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppbar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff8ac0f3),
                ),
                accountName: Text("Avani Hihoriya",style: TextStyle(
                  fontSize: 18
                ),),
                accountEmail: Text("avanihihoriya@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("Home",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  leading: Icon(Icons.home,color: Colors.black54,),
                ),
            ),
                  InkWell(
                    onTap: (){
                    },
                    child: ListTile(
                      title: Text("Login",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      leading: Icon(Icons.login,color: Colors.black54,),
                    ),
                  ),
            InkWell(
              onTap: (){
              },
              child: ListTile(
                title: Text("Sign Up",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                leading: Icon(Icons.verified_user_outlined,color: Colors.black54,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
              },
              child: ListTile(
                title: Text("About Us",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                leading: Icon(Icons.account_balance_outlined,color: Colors.black54,),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 300,
              // color: Colors.red,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),),
              child: Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/m1.jpeg"),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Popular",style: TextStyle(
              fontSize: 18,
              color: Colors.black54
            ),),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                  InkWell(
                    onTap: (){
                      final snackbar = SnackBar(
                        content: Text("Add to Cart",),
                        duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    child: Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/milk.jpeg"),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                  ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                  final snackbar = SnackBar(
                    content: Text("Add to Cart",),
                    duration: Duration(seconds: 2),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/cheese.jpeg"),
                          fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    final snackbar = SnackBar(
                      content: Text("Add to Cart",),
                      duration: Duration(seconds: 2),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/m2.jpeg"),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
              ],
            ),
SizedBox(height: 15,),

            Row(
              children: [
                Text("Almond Milk",style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54
                ),),
                SizedBox(width: 75,),
                Text("Cheese",style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),),
                SizedBox(width: 100,),
                Text("Milk",style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),),
              ],
            ),  SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                labelText: "Search Product",
                labelStyle: TextStyle(
                    color: Colors.white
                ),
                filled: true,
                fillColor: Color(0xff8ac0f3),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(width: 2,color: Colors.white,),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(width: 2,color: Colors.black87),
                ),
              ),
            ),

            SizedBox(height: 30,),

            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffa6c3f3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/paneer1.jpeg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Paneer",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Text("\$12.02",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                         Row(
                           children: [
                             Icon(Icons.star,color: Colors.green.shade300,),
                             Icon(Icons.star,color: Colors.green.shade300,),
                             Icon(Icons.star,color: Colors.green.shade300,),
                             Icon(Icons.star,color: Colors.green.shade300,),
                             Icon(Icons.star,color: Colors.green.shade300,),
                           ],
                         ),
          ],
                    ),
                    SizedBox(width: 80,),

                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                        icon: Icon(Icons.shopping_cart_outlined),
                        color: Colors.black45,iconSize: 40,
                    )
                  ]

                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffa6c3f3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/cheese.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cheese",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Text("\$15.02",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80,),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                      icon: Icon(Icons.shopping_cart_outlined),
                      color: Colors.black45,iconSize: 40,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffa6c3f3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/curd1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Curd",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Text("\$15.02",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80,),

                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                      icon: Icon(Icons.shopping_cart_outlined),
                      color: Colors.black45,iconSize: 40,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffa6c3f3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/cookie1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cookie",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Text("\$15.02",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80,),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                      icon: Icon(Icons.shopping_cart_outlined),
                      color: Colors.black45,iconSize: 40,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffa6c3f3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bread.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bread",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Text("\$15.02",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80,),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                      icon: Icon(Icons.shopping_cart_outlined),
                      color: Colors.black45,iconSize: 40,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffa6c3f3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bm1.jpeg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Butter Milk",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Text("\$15.02",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                            Icon(Icons.star,color: Colors.green.shade300,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80,),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                    },
                      icon: Icon(Icons.shopping_cart_outlined),
                      color: Colors.black45,iconSize: 40,
                    )
                  ],
                ),

              ],
            ),

            SizedBox(height: 30,),

            Row(
              children: [

                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(18.0),


                  ),
                ),

              ],
            ),
          ],
        ),


           ),
      ) ,// This trailing comma makes auto-formatting nicer for build methods.


    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // splash: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_lc46h4dr.json"),
      splash: Lottie.asset("assets/lottie/cow.json"),
      backgroundColor: Colors.white,
      nextScreen: MyHomePage(),
      duration: 4200,
      splashIconSize: 250,

    );
  }
}