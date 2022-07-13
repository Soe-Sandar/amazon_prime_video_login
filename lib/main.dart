import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(15, 23, 30, 1.0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Back",
                style: TextStyle(color: Colors.blue),
              ),
              Image.asset(
                'assets/images/amazon_prime_logo.png',
                fit: BoxFit.contain,

                height: 25,
              ),
              const Icon(Icons.refresh, size: 30)
            ],
          )),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        color: const Color.fromRGBO(15, 23, 30, 1.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Create account",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      wordSpacing: 2),
                ),
                const SizedBox(height: 10),
                const TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Name",
                )),
                const SizedBox(height: 15),
                const TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Your email address",
                )),
                const SizedBox(height: 15),
                const TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Create a password",
                )),
                const SizedBox(height: 5),
                Row(
                  children: const [
                    Icon(Icons.info, color: Colors.blueAccent),
                    SizedBox(width: 5),
                    Text("Passwords must be at least 6 characters",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
                const SizedBox(height: 30),
                FlatButton(
                  onPressed: () {
                    print("Create your Amazon account button tapped");
                  },
                  color: Color.fromRGBO(15, 121, 175, 1.0),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: const Text(
                    "Create your Amazon account",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website",
                  style: TextStyle(
                    color: Color.fromRGBO(122, 143, 156, 1.0),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                FlatButton(
                  onPressed: () {
                    print("Sign in now button tapped");
                  },
                  color: const Color.fromRGBO(66, 82, 101, 1.0),
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: const Text(
                    "Sign-In now",
                  ),
                ),
                const SizedBox(height: 100),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.copyright,
                        color: Color.fromRGBO(122, 143, 156, 1.0),
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "1996-2021, Amazon.com, Inc. or its affiliates",
                        style:
                            TextStyle(color: Color.fromRGBO(122, 143, 156, 1.0)),
                      )
                    ],
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
