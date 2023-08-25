import 'package:brainbuddy/MySignUp.dart';
import 'package:brainbuddy/my_button.dart';
import 'package:brainbuddy/textfield.dart';
import 'package:flutter/material.dart';
import 'package:brainbuddy/home2.dart';

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
    bool _validate = false;

    void signUser(){
      setState(() {
        userNameConroller.text.isEmpty ? _validate = true :_validate = false;
        // userNameConroller.text.isEmpty ? validate = true : validate = false;
      });
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
    }

    void signUserIn(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MySignUp())
      );

    }
    return Scaffold(resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff302b63).withOpacity(0.9),
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
                    // errorText: _validate ? 'Value Can't Be Empty' : null,
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
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forget Password',style: TextStyle(
                        color: Colors.white,
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
                    Text("New Member !!",style: TextStyle(color: Colors.yellow),),

                    new InkWell(
                    onTap:signUserIn,
                    child:(Text("SignUp",style: TextStyle
                    (decoration: TextDecoration.underline,color: Colors.white,fontSize: 16),)))

                  ],

                ),

              ]
            ),

          ),
        ),
    );

  }
}
