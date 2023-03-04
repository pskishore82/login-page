import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:sqflite/sqflite.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(
          children:<Widget>[
            Image(
              image: AssetImage('asset/women.png'),
              height:250,
              width:4400,
            ),
            Text("#1",
              style: TextStyle(
                fontSize: 60,
                color:Colors.orange,
              ),
            ),
            Text("World’s best Found ordering app",
              style: TextStyle(
                fontSize: 40,
                color:Colors.black,
              ),
            ),
            Text("We are awarded with best food ordering app \n ",
              style: TextStyle(
                fontSize: 25,
                color:Colors.black,
              ),
            ),
            ElevatedButton(
              child: const Text('Get Started Now',
                style: TextStyle(
                  fontSize: 25,
                  color:Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordAnimation()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)
                ),
                primary: Colors.orange, // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordAnimation extends StatefulWidget {
  @override
  _PasswordAnimationState createState() => _PasswordAnimationState();
}

class _PasswordAnimationState extends State<PasswordAnimation> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }

        ),
      ),

      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Image.asset('asset/1927-food-truck-lineal.gif',
              width: 200,
              height: 200),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 3),
            child: Text('Sign In',
              //  textAlign: TextAlign.left,
              style: TextStyle(fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 24,
              ),
            ),
          ),
          AnimatedContainer(
            margin: EdgeInsets.only(top: 15,bottom: 15,right:25,left:25),
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 300,
            height: 60,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0,5),
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                    //  obscureText: !_showPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ),
          AnimatedContainer(
            margin: EdgeInsets.only(top: 15,bottom: 15,right:25,left:25),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: 300,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: _showPassword ? Colors.grey[200] : Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0,5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _showPassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,

                ),

                onPressed: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
              ),
            ],
          ),
        ),
          TextButton(
              onPressed: (){},
            style: TextButton.styleFrom(
              fixedSize: Size(170, 20)
            ),
              child: Text('Forgot Password',
                //  textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  decoration: TextDecoration.none,
                  fontSize: 16,
                ),
              ),
          ),
          ElevatedButton(
              child: Text('Login',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18
              ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                primary: Colors.orange,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstRoute())
                );
              },

          ),
          Padding(padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("                              ",
                style: TextStyle(
                  fontWeight:FontWeight.w800,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(" or ",
                style: TextStyle(
                  fontWeight:FontWeight.w800,
                  decoration: TextDecoration.none,
                ),
              ),
              Text("                              ",
                style: TextStyle(
                  fontWeight:FontWeight.w800,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          ),
          Padding(padding: EdgeInsets.all(15),
          child:Text("Login with",
            style: TextStyle(
              fontWeight:FontWeight.w800,
              decoration: TextDecoration.none,
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => print("Login with facebook"),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0,2),
                        blurRadius: 6.0,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('asset/logo/facebook.jpg'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => print("Login with Google"),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0,2),
                        blurRadius: 6.0,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('asset/logo/google.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                child: Text("Don't have a account? ",
                  //  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signin())
                    );
                  },
                  child: Text("Sign up",
                    style: TextStyle(
                      //fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      //  fontSize: 16,
                    ),
                  )
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}

class Signin extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Signin> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              icon:Icon(Icons.arrow_back_ios,color:Colors.black),
              onPressed:(){
                Navigator.pop(context);
              }

          ),
          actions: [
            /* IconButton(
                icon:Icon(
                    Icons.shopping_cart_outlined,
                    color:Colors.black),
                onPressed:(){}),
            IconButton(
                icon:Icon(Icons.search_rounded,
                    color:Colors.black),
                onPressed:(){})
                */
          ]),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('asset/animation_500_lepysb8p.gif',
              width:250,
              height: 250,
            ),
            AnimatedContainer(
              margin: EdgeInsets.only(top: 15,bottom: 15,right:25,left:25),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0,5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        //  obscureText: !_showPassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              margin: EdgeInsets.only(top: 15,bottom: 15,right:25,left:25),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0,5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        //  obscureText: !_showPassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              margin: EdgeInsets.only(top: 15,bottom: 15,right:25,left:25),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: _showPassword ? Colors.grey[200] : Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0,5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      _showPassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text('Sign Up',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                ),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                  primary: Colors.orange,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstRoute())
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                icon:Icon(Icons.arrow_back_ios,color:Colors.black),
                onPressed:(){
                  Navigator.pop(context);
                }

            ),
            actions: [
              IconButton(
                  icon:Icon(
                      Icons.shopping_cart_outlined,
                      color:Colors.black),
                  onPressed:(){}),
              IconButton(
                  icon:Icon(Icons.search_rounded,
                      color:Colors.black),
                  onPressed:(){})
            ]
        ),
        body: SingleChildScrollView(
            padding:EdgeInsets.all(10),
            child:Column(
                children: [
                  Container(
                    width:width,
                    height: height*0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFA358),
                            Color(0xffFFD9BE)
                          ],
                          begin:Alignment.topLeft,
                          end:Alignment.bottomRight ,
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("50%",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text("offer only available for \n today",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,

                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  primary: Colors.black, // Background color

                                ),
                                child:Text("Order Now",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color:Colors.white,
                                  ),
                                ),

                              ),
                            ]
                        ),
                        Image.asset('asset/burger-10956 1.png',
                          width: 170,
                          height: 170,
                        ),
                      ],
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            color:Colors.orange,
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),),],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget>[
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.orangeAccent,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/animation_500_lepyoqq6.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FirstRoute1())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/13-pizza-lineal.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Pizza'),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FirstRoute2())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/567-french-fries-chips-flat.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Fries'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:EdgeInsets.all(20),
                        child: Text("Popular Items :",
                          style: TextStyle(
                            fontSize: 25,
                            color:Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width:width,
                        height: height*0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFFA358),
                                Color(0xffffffff)
                              ],
                              begin:Alignment.bottomCenter,
                              end:Alignment.topCenter ,
                            ),
                          border: Border.all(color: Colors.black38)
                        ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text('Large Burger',
                                        style: TextStyle(
                                            fontSize: 28
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.orange,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: Text('Order')
                                    ),
                                  ],
                                ),
                                Image.asset('asset/kindpng_5499625.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ],
                            ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding:EdgeInsets.only(left:10,right:15),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image(
                                    image: AssetImage('asset/pngaaa-1.png'),
                                    height:100,
                                    width: 100,
                                  ),
                                  Text("Burger with fries",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => FifthRoute())
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                    child:Text("Order Now"),
                                  ),
                                ],),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:<Widget>[
                                    Image(
                                      image: AssetImage('asset/pngaaa.png'),
                                      height: 100,
                                      width: 100,
                                    ),
                                    Text("Only Burger",

                                      style: TextStyle(

                                        fontSize: 18,
                                        color:Colors.black,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ForthRoute())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      child:Text("Order Now"),
                                    ),
                                  ]
                              ),
                            ),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                children:<Widget>[
                                  Image(
                                    image:AssetImage('asset/3 burger.png'),
                                    height: 100,
                                      width: 100,
                                  ),
                                  Text("3 large Burger \n",

                                    style: TextStyle(

                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ThirdRoute())
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                    child:Text("Order Now"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                  children:<Widget>[
                                    Image(
                                      image: AssetImage('asset/images.jpeg'),
                                      height:MediaQuery.of(context).size.height * 0.15,
                                      width: MediaQuery.of(context).size.width/3.5,
                                    ),
                                    Text("Burger with \n Coke & Fries",

                                      style: TextStyle(

                                        fontSize: 18,
                                        color:Colors.black,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SecondRoute())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      child:Text("Order Now"),
                                    ),
                                  ]
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ])
        )
    );
  }
}

class SecondRoute extends StatefulWidget {


  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {

  int _counter=0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Burger with Coke & Fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: AssetImage('asset/images.jpeg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter,

                  ),

                  Text(
                    '$_counter',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}

class ThirdRoute extends StatefulWidget {


  const ThirdRoute({Key? key}) : super(key: key);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {

  int _counter1=0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _decrimentCounter1() {
    setState(() {
      _counter1--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('3 Large Burger',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image:AssetImage('asset/3 burger.png'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter1,

                  ),

                  Text(
                    '$_counter1',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter1,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}
//forth
class ForthRoute extends StatefulWidget {


  const ForthRoute({Key? key}) : super(key: key);

  @override
  State<ForthRoute> createState() => _ForthRouteState();
}

class _ForthRouteState extends State<ForthRoute> {

  int _counter2=0;

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrimentCounter2() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Only Burger',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: AssetImage('asset/pngaaa.png'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 150',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter2,

                  ),

                  Text(
                    '$_counter2',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter2,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}
//fifth
class FifthRoute extends StatefulWidget {


  const FifthRoute({Key? key}) : super(key: key);

  @override
  State<FifthRoute> createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {

  int _counter3= 0;

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _decrimentCounter3() {
    setState(() {
      _counter3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Burger With Fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Image(
                image: AssetImage('asset/pngaaa-1.png'),
                height:330,
                width:340,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Text("Burger With Fries",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(
                  fontSize: 18,
                  color:Colors.black,
                ),
              ),
              Row(
                children:<Widget>[
                  Text('\n Rs 200',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter3,

                  ),

                  Text(
                    '$_counter3',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter3,

                  ),

                ],
              ),

              ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                child:Text("Place order",
                style: TextStyle(
                  fontSize: 28,

                ),
                ),
              ),

            ]

        ),
      ),
    );
  }
}

//pizza

class FirstRoute1 extends StatelessWidget {
  const FirstRoute1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                icon:Icon(Icons.arrow_back_ios,color:Colors.black),
                onPressed:(){
                  Navigator.pop(context);
                }

            ),
            actions: [
              IconButton(
                  icon:Icon(
                      Icons.shopping_cart_outlined,
                      color:Colors.black),
                  onPressed:(){}),
              IconButton(
                  icon:Icon(Icons.search_rounded,
                      color:Colors.black),
                  onPressed:(){})
            ]
        ),
        body: SingleChildScrollView(
            padding:EdgeInsets.all(10),
            child:Column(
                children: [
                  Container(
                    width:width,
                    height: height*0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFA358),
                            Color(0xffFFD9BE)
                          ],
                          begin:Alignment.topLeft,
                          end:Alignment.bottomRight ,
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("50%",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text("offer only available for \n today",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,

                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  primary: Colors.black, // Background color

                                ),
                                child:Text("Order Now",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color:Colors.white,
                                  ),
                                ),

                              ),
                            ]
                        ),
                        Image.asset('asset/burger-10956 1.png',
                          width: 170,
                          height: 170,
                        ),
                      ],
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            color:Colors.orange,
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),),],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FirstRoute())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/animation_500_lepyoqq6.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.orangeAccent,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/13-pizza-lineal.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Pizza'),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=> FirstRoute2())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/567-french-fries-chips-flat.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Fries'),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding:EdgeInsets.all(20),
                        child: Text("Popular Items :",
                          style: TextStyle(
                            fontSize: 25,
                            color:Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width:width,
                        height: height*0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFFA358),
                                Color(0xffffffff)
                              ],
                              begin:Alignment.bottomCenter,
                              end:Alignment.topCenter ,
                            ),
                            border: Border.all(color: Colors.black38)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 28
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Text('Order')
                                ),
                              ],
                            ),
                            Image.asset('asset/pizza/hawaiian-pizza_74190-2500_preview_rev_1.png',
                              width: 160,
                              height: 160,
                            ),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding:EdgeInsets.only(left:10,right:15),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image(
                                    image: AssetImage('asset/pizza/italian-pizza-with-chicken-salami-zucchini-tomatoes-herbs_2829-10838.png'),
                                    height:100,
                                    width: 100,
                                  ),
                                  Text("italian pizza",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => FifthRoute1())
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                    child:Text("Order Now"),
                                  ),
                                ],),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:<Widget>[
                                    Image(
                                      image: AssetImage('asset/pizza/mixed-pizza-with-various-ingridients.jpg'),
                                      height: 100,
                                      width: 100,
                                    ),
                                    Text("Mixed Pizza",

                                      style: TextStyle(

                                        fontSize: 18,
                                        color:Colors.black,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ForthRoute1())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      child:Text("Order Now"),
                                    ),
                                  ]
                              ),
                            ),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                children:<Widget>[
                                  Image(
                                    image:AssetImage('asset/pizza/pizza-pizza-filled-with-tomatoes-salami-olives.jpg'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text("pizza with \n tomatoes",

                                    style: TextStyle(

                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ThirdRoute1())
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                    child:Text("Order Now"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                  children:<Widget>[
                                    Image(
                                      image: AssetImage('asset/pizza/tasty-homemade-traditional-pizza-italian-recipe.jpg'),
                                      height:MediaQuery.of(context).size.height * 0.15,
                                      width: MediaQuery.of(context).size.width/3.5,
                                    ),
                                    Text("Tasty traditional \n       pizza",

                                      style: TextStyle(

                                        fontSize: 18,
                                        color:Colors.black,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SecondRoute1())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      child:Text("Order Now"),
                                    ),
                                  ]
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ])
        )
    );
  }
}

class SecondRoute1 extends StatefulWidget {


  const SecondRoute1({Key? key}) : super(key: key);

  @override
  State<SecondRoute1> createState() => _SecondRoute1State();
}

class _SecondRoute1State extends State<SecondRoute1> {

  int _counter=0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Tasty traditional pizza',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(
            children:<Widget>[
              Image(
                image: AssetImage('asset/pizza/tasty-homemade-traditional-pizza-italian-recipe.jpg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Tasty Traditional Pizza",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),
                ],
              ),
              Text("Tasty traditional italian pizza recipe.",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter,

                  ),

                  Text(
                    '$_counter',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}

class ThirdRoute1 extends StatefulWidget {


  const ThirdRoute1({Key? key}) : super(key: key);

  @override
  State<ThirdRoute1> createState() => _ThirdRoute1State();
}

class _ThirdRoute1State extends State<ThirdRoute1> {

  int _counter1=0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _decrimentCounter1() {
    setState(() {
      _counter1--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Pizza with Tomatoes',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image:AssetImage('asset/pizza/pizza-pizza-filled-with-tomatoes-salami-olives.jpg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Pizza with Tomatoes",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("Pizza filled with,tomatoes,\n salami,olives",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter1,

                  ),

                  Text(
                    '$_counter1',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter1,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}
//forth
class ForthRoute1 extends StatefulWidget {


  const ForthRoute1({Key? key}) : super(key: key);

  @override
  State<ForthRoute1> createState() => _ForthRoute1State();
}

class _ForthRoute1State extends State<ForthRoute1> {

  int _counter2=0;

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrimentCounter2() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Mixed Pizza',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(
            children:<Widget>[
              Image(
                image: AssetImage('asset/pizza/mixed-pizza-with-various-ingridients.jpg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("Mixed pizza with various ingridients.",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 150',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter2,

                  ),

                  Text(
                    '$_counter2',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter2,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}
//fifth
class FifthRoute1 extends StatefulWidget {

  const FifthRoute1({Key? key}) : super(key: key);

  @override
  State<FifthRoute1> createState() => _FifthRoute1State();
}

class _FifthRoute1State extends State<FifthRoute1> {

  int _counter3= 0;

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _decrimentCounter3() {
    setState(() {
      _counter3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Italian Pizza',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Image(
                image: AssetImage('asset/pizza/italian-pizza-with-chicken-salami-zucchini-tomatoes-herbs_2829-10838.png'),
                height:330,
                width:340,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Text("Italian pizza",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("Italian pizza with chicken, \n salami,zucchini,tomatoes,herbs",
                style: TextStyle(
                  fontSize: 18,
                  color:Colors.black,
                ),
              ),
              Row(
                children:<Widget>[
                  Text('\n Rs 200',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter3,

                  ),

                  Text(
                    '$_counter3',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter3,

                  ),

                ],
              ),

              ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                child:Text("Place order",
                  style: TextStyle(
                    fontSize: 28,

                  ),
                ),
              ),

            ]

        ),
      ),
    );
  }
}

//fries

class FirstRoute2 extends StatelessWidget {
  const FirstRoute2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                icon:Icon(Icons.arrow_back_ios,color:Colors.black),
                onPressed:(){
                  Navigator.pop(context);
                }

            ),
            actions: [
              IconButton(
                  icon:Icon(
                      Icons.shopping_cart_outlined,
                      color:Colors.black),
                  onPressed:(){}),
              IconButton(
                  icon:Icon(Icons.search_rounded,
                      color:Colors.black),
                  onPressed:(){})
            ]
        ),
        body: SingleChildScrollView(
            padding:EdgeInsets.all(10),
            child:Column(
                children: [
                  Container(
                    width:width,
                    height: height*0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFA358),
                            Color(0xffFFD9BE)
                          ],
                          begin:Alignment.topLeft,
                          end:Alignment.bottomRight ,
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("50%",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text("offer only available for \n today",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,

                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  primary: Colors.black, // Background color

                                ),
                                child:Text("Order Now",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color:Colors.white,
                                  ),
                                ),

                              ),
                            ]
                        ),
                        Image.asset('asset/burger-10956 1.png',
                          width: 170,
                          height: 170,
                        ),
                      ],
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            color:Colors.orange,
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),),],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FirstRoute())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/animation_500_lepyoqq6.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FirstRoute1())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/13-pizza-lineal.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Pizza'),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> FirstRoute())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:20,right:7),
                              height: 100,
                              width:80,
                              decoration: BoxDecoration(
                                  color:Colors.orangeAccent,
                                  border: Border.all(color:Colors.black38),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image.asset('asset/567-french-fries-chips-flat.gif',
                                    width: 200,
                                    height: 80,
                                  ),
                                  Text('Fries'),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding:EdgeInsets.all(20),
                        child: Text("Popular Items :",
                          style: TextStyle(
                            fontSize: 25,
                            color:Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width:width,
                        height: height*0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFFA358),
                                Color(0xffffffff)
                              ],
                              begin:Alignment.bottomCenter,
                              end:Alignment.topCenter ,
                            ),
                            border: Border.all(color: Colors.black38)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text('Italian Pizza',
                                    style: TextStyle(
                                        fontSize: 28
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Text('Order')
                                ),
                              ],
                            ),
                            Image.asset('asset/fries/AdobeStock_126023380_Preview-removebg-preview.png',
                              width: 160,
                              height: 160,
                            ),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding:EdgeInsets.only(left:10,right:15),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:<Widget>[
                                  Image(
                                    image: AssetImage('asset/fries/chicken-nuggets-small-paper-bag-served-with-lemon-parsley-sweet-chili-bbq-sauce.jpg'),
                                    height:100,
                                    width: 100,
                                  ),
                                  Text("Chicken Nuggets",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => FifthRoute2())
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                    child:Text("Order Now"),
                                  ),
                                ],),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:<Widget>[
                                    Image(
                                      image: AssetImage('asset/fries/chicken-skewers-with-slices-apples-chili-top-view.jpg'),
                                      height: 100,
                                      width: 100,
                                    ),
                                    Text("Chicken Skewers",

                                      style: TextStyle(

                                        fontSize: 18,
                                        color:Colors.black,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ForthRoute2())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      child:Text("Order Now"),
                                    ),
                                  ]
                              ),
                            ),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                children:<Widget>[
                                  Image(
                                    image:AssetImage('asset/fries/crispy-french-fries-with-ketchup-mayonnaise.jpg'),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Text("Crispy French Fries",

                                    style: TextStyle(

                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: (){

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ThirdRoute2())
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    ),
                                    child:Text("Order Now"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:10,right:10),
                              child:Column(
                                  children:<Widget>[
                                    Image(
                                      image: AssetImage('asset/fries/side-view-chicken-nuggets-lettuce-with-sauce-unpeeled-potatoes.jpg'),
                                      height:MediaQuery.of(context).size.height * 0.15,
                                      width: MediaQuery.of(context).size.width/3.5,
                                    ),
                                    Text("Chicken Nuggets",

                                      style: TextStyle(

                                        fontSize: 18,
                                        color:Colors.black,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SecondRoute2())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      ),
                                      child:Text("Order Now"),
                                    ),
                                  ]
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ])
        )
    );
  }
}

class SecondRoute2 extends StatefulWidget {


  const SecondRoute2({Key? key}) : super(key: key);

  @override
  State<SecondRoute2> createState() => _SecondRoute2State();
}

class _SecondRoute2State extends State<SecondRoute2> {

  int _counter=0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Burger with Coke & Fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: AssetImage('asset/fries/side-view-chicken-nuggets-lettuce-with-sauce-unpeeled-potatoes.jpg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter,

                  ),

                  Text(
                    '$_counter',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}

class ThirdRoute2 extends StatefulWidget {


  const ThirdRoute2({Key? key}) : super(key: key);

  @override
  State<ThirdRoute2> createState() => _ThirdRoute2State();
}

class _ThirdRoute2State extends State<ThirdRoute2> {

  int _counter1=0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _decrimentCounter1() {
    setState(() {
      _counter1--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Crispy french fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image:AssetImage('asset/fries/crispy-french-fries-with-ketchup-mayonnaise.jpg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Crispy French Fries",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter1,

                  ),

                  Text(
                    '$_counter1',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter1,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}
//forth
class ForthRoute2 extends StatefulWidget {


  const ForthRoute2({Key? key}) : super(key: key);

  @override
  State<ForthRoute2> createState() => _ForthRoute2State();
}

class _ForthRoute2State extends State<ForthRoute2> {

  int _counter2=0;

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrimentCounter2() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Chicken Skewers',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: AssetImage('asset/fries/chicken-skewers-with-slices-apples-chili-top-view.jpg'),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("chicken skewers",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 150',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter2,

                  ),

                  Text(
                    '$_counter2',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter2,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}
//fifth
class FifthRoute2 extends StatefulWidget {

  const FifthRoute2({Key? key}) : super(key: key);

  @override
  State<FifthRoute2> createState() => _FifthRoute2State();
}

class _FifthRoute2State extends State<FifthRoute2> {

  int _counter3= 0;

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _decrimentCounter3() {
    setState(() {
      _counter3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Burger With Fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Image(
                image: AssetImage('asset/fries/chicken-nuggets-small-paper-bag-served-with-lemon-parsley-sweet-chili-bbq-sauce.jpg'),
                height:330,
                width:340,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Text("chicken nuggets",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),
                ],
              ),

              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(
                  fontSize: 18,
                  color:Colors.black,
                ),
              ),
              Row(
                children:<Widget>[
                  Text('\n Rs 200',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter3,

                  ),

                  Text(
                    '$_counter3',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter3,

                  ),

                ],
              ),

              ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                child:Text("Place order",
                  style: TextStyle(
                    fontSize: 28,

                  ),
                ),
              ),

            ]

        ),
      ),
    );
  }
}


