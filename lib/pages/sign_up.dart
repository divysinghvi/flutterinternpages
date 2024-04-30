import 'package:flutter/material.dart';
import 'package:flutterinternpages/pages/login_page.dart';
import 'package:flutterinternpages/utilities/grid.dart';
import 'package:google_fonts/google_fonts.dart';
class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _header(context),
                  const SizedBox(
                    height: 10,
                  ),
                  _logo(context),
                  const SizedBox(
                    height: 20,
                  ),
                  _tagline(context),
                  const SizedBox(
                    height: 20,
                  ),
                  _inputField(context),
                  const SizedBox(
                    height: 25,
                  ),
                  _txt(context),
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      width: MediaQuery.sizeOf(context).width,
                      child: Gri()),
                  _txtaddschool(context),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome to",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _tagline(context) {
    return const Column(
      children: [
        Text(
          "An Exclusive Network of Executive MBAs",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _txt(context) {
    return const Column(
      children: [
        Text(
          "Top Executives from",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _logo(context) {
    return Column(
      children: [
        Container(
            child: Image.asset(
              'lib/assets/logo.png',
              height: 70,
              width: 150,
            )),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _signupbtn(context),
        const SizedBox(
          height: 10,
        ),
        _or(context),
        const SizedBox(
          height: 10,
        ),
        _loginbtn(context),
      ],
    );
  }

  _loginbtn(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 5),
        backgroundColor: const Color.fromARGB(255, 54, 188, 181),
      ),
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
      ),
    );
  }

  _signupbtn(context) {
    return ElevatedButton(
      onPressed: () {Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));

      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 5),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        side:
        const BorderSide(color: Color.fromRGBO(54, 188, 181, 1), width: 2),
      ),
      child: const Text(
        "Sign Up",
        style: TextStyle(
          fontSize: 13,
          color: Color.fromARGB(255, 54, 188, 181),
        ),
      ),
    );
  }

  _txtaddschool(context) {
    return const Text("+ 30 More Schools");
  }

  _or(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'or',
            style: GoogleFonts.robotoFlex(
              fontSize: 18,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }


}