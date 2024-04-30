import 'package:flutter/material.dart';
import 'package:flutterinternpages/pages/screen.dart';
import 'package:flutterinternpages/pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _header(context),
                        SizedBox(height: 25),
                        _logo(context),
                        const SizedBox(height: 25),
                        _inputField(context),
                      ],
                    ),
                  ),
                ),
              ),
              _signup(context),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }


  _header(context) {
    return Column(
      children: [
        Text(
          "Welcome to",
          style: GoogleFonts.robotoFlex(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
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
        TextField(
          decoration: InputDecoration(
            hintText: "Enter email id*",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.mail_outline_outlined),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter password*",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.lock_outline),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
          obscureText: true,
        ),
        _forgotPassword(context),
        _loginbtn(context),
        const SizedBox(
          height: 10,
        ),
        _or(context),
        const SizedBox(
          height: 10,
        ),
        _loginLinkedin(context),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }

  _forgotPassword(context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.end, // Aligns the button to the left side
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot password?",
            style: TextStyle(color: Color.fromARGB(255, 45, 44, 44)),
          ),
        ),
      ],
    );
  }

  _loginbtn(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen()));
      },
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

  _loginLinkedin(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 6),
        backgroundColor: Colors.white,
        side: const BorderSide(
            color: Color.fromRGBO(0, 102, 153, 1), width: 2), // Blue border
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/assets/link.png', // Path to your asset icon
            width: 24, // Set the width of the image
            height:
            24, // Set the height of the image // Color of the asset icon
          ),
          const SizedBox(width: 8), // Add some space between icon and text
          const Text(
            "Login with Linkedin",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(0, 102, 153, 1), // Text color set to white
            ),
          ),
        ],
      ),
    );
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


  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
            "Dont have an account? ",
          style: GoogleFonts.robotoFlex(
              fontSize: 14,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignPage()));
            },
            child:  Text(
              "Sign Up",
              style: GoogleFonts.robotoFlex(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 59, 183, 177)
              ),
            ))
      ],
    );
  }
}