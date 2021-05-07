import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class LoginPage extends StatefulWidget
{
  

  @override
  LoginPageState createState()=>LoginPageState();
  

}

class LoginPageState extends State<LoginPage>{
    String email,password;

Widget logoWid(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Login",style: 
        TextStyle(fontSize: 40,color: Colors.white),)
      ],
    );
  }
  Widget containerBody(context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(70)),
      child:Container(
        height: MediaQuery.of(context).size.height*.6,
        width: MediaQuery.of(context).size.width*.8 ,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bEMailRow(),
            bPasswordRow(),
            bRememberPassRow(),
            bLoginBtn(context),
            bOrRow(),
            socialMediaRow()
          ],
        ),
      )
    )
      ],
    );
  }
  Widget signUpBtn()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(onPressed: ()=>{}, child: RichText(text: TextSpan(
          children: [TextSpan(
          text: "Don't have an account? ",
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
        ),
        TextSpan(
          text: "Sign up",
        style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)
        ),
        ],
        ),
        ))
      ],
    );
  }
Widget bRememberPassRow()
 {
   return Row(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       FlatButton(onPressed: ()=>{

       }, child: Text("Forgot Password"))
     ],

   );
 }

 Widget bLoginBtn(context)
 {
   return Row(

mainAxisAlignment: MainAxisAlignment.center,
children: [
  Container(height: (MediaQuery.of(context).size.height*.05),
  
  width: (MediaQuery.of(context).size.width*.3),
  margin: EdgeInsets.only(bottom: 20),
  child: RaisedButton(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
  elevation: 10 ,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),color: Colors.orange
  ,onPressed: ()=>{
    
  },),
  )
],
   );
 }

  Widget bOrRow()
  {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container( 
        margin: EdgeInsets.only(top:20) ,
        width: 30,
        height: 30,
        decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.only(top: 7,left: 5),
          child: Text("OR",style: TextStyle(color: Colors.white,)),
        ))
    ]);
  }

  Widget socialMediaRow()
  {
return Row(
mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Container(child: Icon(FontAwesomeIcons.facebook,color: Colors.white,size: 40,),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orange),width: 55,height: 55,padding: EdgeInsets.all(0),),
        Container(child: Icon(FontAwesomeIcons.google,color: Colors.white,size: 40,),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orange),width: 55,height: 55,margin: EdgeInsets.only(left: 20),),
      ],

);
  }
 Widget bEMailRow()
 {
   return Container(
padding: EdgeInsets.all(8),
child: TextFormField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    prefixIcon:Icon(Icons.email,color: Colors.orange,),
    labelText: 'E-mail',
    
     ),
  

),
   );
 }
 Widget bPasswordRow()
 {
   return Container(
padding: EdgeInsets.all(8),
child: TextFormField(
  keyboardType: TextInputType.text,
 obscureText: true,
  decoration: InputDecoration(
    prefixIcon:Icon(Icons.lock,color: Colors.orange,),
    labelText: 'Password',
    
     ),
  

),
   );
 }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        body: Stack(
      
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.7,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(50),
                bottomRight:const Radius.circular(50)
              )),

            ),
          )
            
          ,Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logoWid(),
              containerBody(context),
              signUpBtn()
            ],
          )
        ],

      ),
      
      ),
    );

  }

}



