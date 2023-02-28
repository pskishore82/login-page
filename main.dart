import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: true,
        home: PasswordAnimation()
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
    return Scaffold(

      body: Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
                        hintText: 'Name',
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
                  fontWeight: FontWeight.w200,
                  fontSize: 18
              ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 50),
                primary: Colors.blue,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
              ),
              onPressed: (){},

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
              child: Text("Sign in",
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
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                          hintText: 'Name',
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
          ],
        ),
      ),

    );
  }
}

