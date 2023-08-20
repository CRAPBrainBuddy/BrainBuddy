import 'package:flutter/material.dart';
import 'package:brainbuddy/my_button.dart';
import 'package:brainbuddy/textfield.dart';
import 'package:brainbuddy/MyLogin.dart';


class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State <MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  @override
  Widget build(BuildContext context)
  {
    final userFirstController = TextEditingController();
    final userLastController = TextEditingController();
    final usermailController = TextEditingController();
    final date = TextEditingController();
    final month = TextEditingController();
    final year = TextEditingController();
    final mobile = TextEditingController();
    final gender = TextEditingController();
    final password = TextEditingController();
    final confirmpassword = TextEditingController();
    
    void signUp(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MySignUp())
      );
    }

    return Scaffold(resizeToAvoidBottomInset: true,
    backgroundColor: Color(0xFFCFF9F4),
    body: SingleChildScrollView(
      child: SafeArea(
           child:Column(
            children: [
              const SizedBox(height:10),

              Text('BrainBuddy',style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30
              ),),

              const SizedBox(height: 25,),

              Icon(Icons.lock,size: 70,color: Colors.white,),
              //empty space
              const SizedBox(height: 25,),

              Text('New Member? Please Sign Up ',
                style: TextStyle(color: Colors.grey,
                    fontSize: 16),),

              //empty Space
              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                        child:
                        MyTextField(controller: userFirstController,
                            hintText: 'First Name',
                            obsecureText: false),),
                  Expanded(child:
                        MyTextField(controller: userLastController,
                            hintText: 'Last Name',
                            obsecureText: false),),
                    ],
                  ),
              SizedBox(height: 10,),


              MyTextField(controller: usermailController,
                  hintText:'E-mail',
                  obsecureText: false),
              SizedBox(height: 10,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(child: MyTextField(controller: date,
                        hintText: 'date',
                        obsecureText: false),),
                  Flexible(child: MyTextField(controller: month,
                      hintText: 'month',
                      obsecureText: false),),
                  Flexible(child: MyTextField(controller: year,
                      hintText: 'year',
                      obsecureText: false),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child:
                    MyTextField(controller: mobile,
                        hintText: 'mobile Number',
                        obsecureText: false),),
                  Expanded(child: MyTextField(controller: gender,
                      hintText: 'Gender',
                      obsecureText: false),),
                ],
              ),
              SizedBox(height: 10,),
              MyTextField(controller: password,
                  hintText:'Password',
                  obsecureText: true),
              SizedBox(height: 10,),
              MyTextField(controller: confirmpassword,
                  hintText:'Confirm Password',
                  obsecureText: true),
               SizedBox(height: 25,),


              MyButton(onTap: signUp),
      ],
) ,
// /

),
    ),
    );
  }
}
