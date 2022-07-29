import 'package:amazon_prime_video_login/resources/colors.dart';
import 'package:amazon_prime_video_login/resources/dimens.dart';
import 'package:amazon_prime_video_login/resources/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PRIMARY_COLOR,
        leading: const Padding(
          padding: EdgeInsets.only(
            top: MARGIN_MEDIUM_2,
            left: MARGIN_MEDIUM_2,
          ),
          child: Text(
            LEADING_TEXT,
            style: TextStyle(
              color: Colors.blue,
              fontSize: TEXT_REGULAR_3X,
            ),
          ),
        ),
        title: Image.asset(
          'assets/images/amazon_prime_logo.png',
          fit: BoxFit.contain,
          height: LOGO_HEIGHT,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: MARGIN_MEDIUM_2,
            ),
            child: Icon(
              Icons.refresh,
              size: REFRESH_BUTTON_SIZE,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM,
        ),
        color: HOME_SCREEN_BACKGROUND_COLOR,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: MARGIN_MEDIUM,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    BODY_TITLE,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: TEXT_HEADING_3X,
                      wordSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Name",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Your email address",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Create a password",
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Icon(
                        Icons.info,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Passwords must be at least 6 characters",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          value: value,
                          checkColor: Colors.blue,
                          activeColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ),
                      const Text(
                        SHOW_PASSWORD_TEXT,
                        style: TextStyle(
                          color: SHOW_PASSWORD_TEXT_COLOR,
                          fontSize: TEXT_REGULAR_3X,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      print(
                        "Create your Amazon account button tapped",
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: CREATE_YOUR_AMAZON_ACCOUNT_BUTTON_COLOR,
                      padding: const EdgeInsets.symmetric(
                        vertical: MARGIN_MEDIUM_3,
                      ),
                    ),
                    child: const Text(
                      TEXT_BUTTON_TEXT_1,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website",
                    style: TextStyle(
                      color: SHOW_PASSWORD_TEXT_COLOR,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      print("Sign in now button tapped");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: SIGN_IN_NOW_BUTTON_COLOR,
                      padding: const EdgeInsets.symmetric(
                        vertical: MARGIN_MEDIUM_3,
                      ),
                    ),
                    child: const Text(
                      TEXT_BUTTON_TEXT_2,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.copyright,
                          color: SHOW_PASSWORD_TEXT_COLOR,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          COPY_RIGHT_TEXT,
                          style: TextStyle(
                            color: SHOW_PASSWORD_TEXT_COLOR,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
