import 'package:amalitech_project_ar/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   foregroundColor: Colors.white,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: SvgPicture.asset(
                'assets/images/bg_image.svg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.29,
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: Image.asset("assets/images/group2.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(4)),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Color.fromARGB(97, 255, 255, 255)),
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Homescreen.routeName);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('Continue'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.44,
                              color: Colors.white),
                          const Text(
                            'or',
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.44,
                              color: Colors.white),
                        ]),
                    const SizedBox(height: 25),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.apple,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                          Text("Continue with Apple",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 14,
                            ),
                          ),
                          Text("Continue with Facebook",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 10,
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            text:
                                "By using our app, you confirm that you accept our ",
                            children: [
                              TextSpan(
                                text: "Terms of use",
                                style: TextStyle(color: Colors.orange),
                              ),
                              TextSpan(text: " and "),
                              TextSpan(
                                  text: "Privacy Policy.",
                                  style: TextStyle(color: Colors.orange)),
                            ]),
                      )),
                ),
              ),
            )
          ],
        ));
  }
}
