import 'package:flutter/material.dart';
import 'package:safe_walk/home.dart';
import 'extension.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuerry = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: '#47082A'.toColor(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, right: 20, bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                      style: TextStyle(fontSize: 20, height: 1.5),
                      decoration: InputDecoration(
                          hintText: "Enter your Name",
                          prefixIcon:
                              Icon(Icons.drive_file_rename_outline_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 20, right: 20, bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                      style: TextStyle(fontSize: 20, height: 1.5),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email_rounded),
                          hintText: "Enter your email ID",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 20, right: 20, bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 20, height: 1.5),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open_rounded),
                          hintText: "Enter your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                      style: TextStyle(fontSize: 20, height: 1.5),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_rounded),
                          hintText: "Enter your mobile number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homePage()));
                    },
                    child: Container(
                      height: 70,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: Text("Already have an account",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
