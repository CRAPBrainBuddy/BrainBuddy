import 'package:brainbuddy/MySignUp.dart';
import 'package:brainbuddy/my_button.dart';
import 'package:brainbuddy/textfield.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context)
  {
    final userNameConroller = TextEditingController();
    final PasswordNameController = TextEditingController();
    void signUser(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MySignUp())
      );
    }
    // void signUser(){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));
    // }

    void signUserIn(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MySignUp())
      );

    }
    return Scaffold(resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFCFF9F4),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                //empty space
                const SizedBox(height: 70,),
                //logo
                const Text('BrainBuddy',style: TextStyle(
                  color: Color(0xFFE1AD01),
                  fontSize: 36,
                ),),

                const SizedBox(height: 25),
                Icon(Icons.lock,size: 80,color: Colors.white,),
                //empty space
                const SizedBox(height: 25,),

                //Welcome Text Greetings
                Text('Welcome Back! You have been Missed',
                style: TextStyle(color: Colors.grey,
                fontSize: 16),),

                //empty Space
                SizedBox(height: 25,),

                //UserName TextField
                MyTextField(
                controller: userNameConroller,
                  hintText:'UserName',
                  obsecureText: false,
                ),

                //empty Space
                SizedBox(height: 30,),

                //Password
                MyTextField(
                  controller: PasswordNameController,
                  hintText: 'Password',
                  obsecureText: true,
                ),

                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forget Password',style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline
                      ),),
                    ],
                  ),
                ),

                SizedBox(height: 25,),

                MyButton(
                  onTap: signUser,
                ),

                SizedBox(height: 30,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New Member !! "),

                    new InkWell(
                    onTap:signUserIn,
                    child:(Text("SignUp",style: TextStyle
                    (decoration: TextDecoration.underline,color: Colors.red,fontSize: 16),)))

                  ],

                ),

              ]
            ),

          ),
        ),
    );

  }
}
