import 'package:flutter/material.dart';
import 'package:brainbuddy/my_button.dart';
import 'package:brainbuddy/textfield.dart';
import 'package:brainbuddy/MyLogin.dart';
import 'package:intl/intl.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  String selectedValue = "Male";
  TextEditingController dateInput = TextEditingController();
  final userFirstController = TextEditingController();
  final userLastController = TextEditingController();
  final usermailController = TextEditingController();
  final mobile = TextEditingController();
  final gender = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Male"), value: "Male"),
      DropdownMenuItem(child: Text("Female"), value: "Female"),
      DropdownMenuItem(child: Text("Others"),value: "Others"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    void initState() {
      dateInput.text = "idhar ayegi date"; //set the initial value of text field
      super.initState();
    }

    void signUp() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MySignUp()));
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff302b63),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),

              Text(
                'BrainBuddy',
                style: TextStyle(color: Colors.yellow, fontSize: 30),
              ),

              const SizedBox(
                height: 25,
              ),

              Icon(
                Icons.lock,
                size: 70,
                color: Colors.white,
              ),
              //empty space
              const SizedBox(
                height: 25,
              ),

              Text(
                'New Member? Please Sign Up ',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              //empty Space
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: MyTextField(
                              controller: userFirstController,
                              hintText: 'First Name',
                              obsecureText: false),
                        ),
                        Expanded(
                          child: MyTextField(
                              controller: userLastController,
                              hintText: 'Last Name',
                              obsecureText: false),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                        controller: usermailController,
                        hintText: 'E-mail',
                        obsecureText: false),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_today),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff302b63),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              contentPadding: EdgeInsets.all(13),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26),
                              ),
                              fillColor: Colors.white38,
                              filled: true,
                              hintText: "Enter Date"), //icon of text field
                          // labelText: "Enter Date" ),
                          controller:
                              dateInput, //editing controller of this TextField
                          readOnly: true, // when true user cannot edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(), //get today's date
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd')
                                  .format(
                                      pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                              print(
                                  formattedDate); //formatted date output using intl package =>  2022-07-04
                              //You can format date as per your need

                              setState(() {
                                dateInput.text =
                                    formattedDate; //set foratted date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      Expanded(
                        child: MyTextField(
                            controller: mobile,
                            hintText: 'mobile Number',
                            obsecureText: false),
                      ),
                      Expanded(
                        child: DropdownButtonFormField(
                          items: dropdownItems,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff302b63),
                                width: 1.0,
                              )
                            ),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(13),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26),
                              ),
                              fillColor: Colors.white38,
                              filled: true,
                              hintText: "Name",),
                          value: selectedValue,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                        controller: password,
                        hintText: 'Password',
                        obsecureText: true),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                        controller: confirmpassword,
                        hintText: 'Confirm Password',
                        obsecureText: true),
                    SizedBox(
                      height: 25,
                    ),
                    MyButton(onTap: signUp),
                  ],
                ),
              ),
            ],
          ),
// /
        ),
      ),
    );
  }
}
