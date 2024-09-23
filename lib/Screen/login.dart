import 'package:flutter/material.dart';
import 'package:opsaide_login/Routes/my_routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constrain) {
        if (constrain.maxWidth > 600) {
          return Stack(
            children: [
              //BG
              SizedBox(
                height: s.height,
                width: s.width,
                child: Image.asset(
                  'lib/assets/image/bg.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          );
        }
        return Stack(
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
                        'Hey,\nLogin / Signup',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Please enter your valid email address.',
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(
                            height: 10,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(width: 12),
                                Image.asset("lib/assets/icon/msg.png"),
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
                          hintText: 'Email',
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
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoutes.instance.verificationcode);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xfffb832c),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
