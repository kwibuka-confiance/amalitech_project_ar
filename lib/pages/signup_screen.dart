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
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/svgs/TopNav.svg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: SvgPicture.asset("assets/svgs/logoImage.svg"),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(4)),
                          child: const TextField(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
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
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF42B546))),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  color: Colors.white),
                              const Text(
                                'or',
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                  height: 1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  color: Colors.white),
                            ]),
                        const SizedBox(height: 25),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ),
                              Text("Continue with Apple",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Image.asset(
                                      'assets/images/GoogleR.png',
                                      fit: BoxFit.fill,
                                      height: 18,
                                      width: 18),
                                ),
                                Text("Continue with Google",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom: 20),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text:
                                    "By using our app, you confirm that you accept our ",
                                style: TextStyle(fontWeight: FontWeight.w200),
                                children: [
                                  TextSpan(
                                    text: "Terms of use",
                                    style: TextStyle(color: Color(0xFFD78B2A)),
                                  ),
                                  TextSpan(text: " and "),
                                  TextSpan(
                                      text: "Privacy Policy.",
                                      style:
                                          TextStyle(color: Color(0xFFD78B2A))),
                                ]),
                            strutStyle: StrutStyle(fontSize: 13),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
