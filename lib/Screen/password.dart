import 'package:flutter/material.dart';
import 'package:opsaide_login/Routes/my_routes.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //BG
          Positioned(
            child: Image.asset('lib/assets/image/bg.png'),
          ),
          //Smoke
          Positioned(
            top: 238,
            child: Image.asset(
              "lib/assets/logo/whitesmoke.png",
              width: s.width,
            ),
          ),

          // OPSAIDE LOGO
          Positioned(
            top: 130,
            left: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('lib/assets/logo/logo.png', height: 80),
                SizedBox(
                  width: s.width * 0.1,
                ),
                Image.asset('lib/assets/logo/Vector.png', height: 110),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: s.height * 0.6,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  "Please enter the verification code we have sent to the email address "),
                          TextSpan(
                            text: "nirajprajpati2330@gmail.com",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Image(
                            height: 20,
                            width: 20,
                            image: AssetImage(
                              "lib/assets/icon/Eye.png",
                            ),
                          ),
                        ),
                        prefixIcon: SizedBox(
                          height: 10,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 12),
                              Image.asset(
                                "lib/assets/icon/Lock.png",
                                color: Colors.grey,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(width: 4),
                              const VerticalDivider(
                                thickness: 1,
                                indent: 8,
                                endIndent: 8,
                              ),
                              const SizedBox(width: 4),
                            ],
                          ),
                        ),
                        hintText: 'password',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xfffb832c),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget password?",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xfffb832c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Log in using password',
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            endIndent: 10,
                            // indent: 20,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        const Text("OR"),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            // endIndent: 0.5,
                            indent: 10,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: Color(0xfffb832c),
                            ),
                          ),
                        ),
                        // style: OutlinedButton.styleFrom(
                        //   backgroundColor: Colors.white,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(50),
                        //     side: const BorderSide(
                        //       color: Color(0xfffb832c),
                        //     ),
                        //   ),
                        // ),
                        child: const Text(
                          'Log In using password',
                          style: TextStyle(
                            fontSize: 26,
                            color: Color(0xfffb832c),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Entered wrong email address? ',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                          children: [
                            TextSpan(
                              text: 'Change email address',
                              style: TextStyle(
                                color: Color(0xfffb832c),
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xfffb832c),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
