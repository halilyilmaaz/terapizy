

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pqr/presentation/components/TButton.dart';
import 'package:pqr/presentation/views/login_screens/forgot_password_page.dart';
import 'package:pqr/presentation/views/login_screens/register.dart';
import 'package:pqr/presentation/views/welcome_screens/hello_avatar_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      appBar: AppBar(
        title:  Text('Log In', style: TextStyle(color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold,fontSize: 22)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(width: 10),
                  Expanded(child: 
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black.withOpacity(0.1)),
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Apple", style: TextStyle(color: Colors.black.withOpacity(0.9), fontWeight: FontWeight.normal,fontSize: 16)),
                          SvgPicture.asset('assets/apple.svg', width: 20, height: 22)
                        ],
                      ),
                    ),
                  ),
                  
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: Container(
                    
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Google", style: TextStyle(color: Colors.black.withOpacity(0.9), fontWeight: FontWeight.normal,fontSize: 16)),
                            SvgPicture.asset('assets/google.svg', width: 20, height: 22)
                          ],
                        ),
                    ),
                  )),
                  const SizedBox(width: 10),
                ],
              ),
             const SizedBox(height: 20),
              Row(
                children: [ 
                 const SizedBox(width: 10),
                    const Expanded(
                        child: Divider(thickness: 0.3)
                    ),       
                    const SizedBox(width: 10),
                    Text("OR", style: TextStyle(color: Colors.black.withOpacity(0.6))),     
                    const SizedBox(width: 10),
                    const Expanded(
                        child: Divider(thickness: 0.3)
                    ),
                    const SizedBox(width: 10),
                ]
            ),
            const SizedBox(height: 20),
            Text("To log in, you can use the e-mail address or mobile number you used when you registered.", style: TextStyle(color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal,fontSize: 14), textAlign: TextAlign.center),
                
            tabbarSection(
              children: [
                loginWithPhone(),
                loginWithEmail()
              ],
            ),
                
                
            ],
            
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 60,
              width: 140,
              child: TButton(
                color: const Color(0xFF7942ba),
                title: "Log In",
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmNumberPage()));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HelloAvatarPage()));
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));},
                  child: RichText(
                    text: TextSpan(
                      text: "Do you have an account? ",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: "Register now",
                          style: TextStyle(
                            color: Colors.purple.shade700,
                            fontSize: 15,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}



class loginWithPhone extends StatelessWidget {
  const loginWithPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: "+90",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    fillColor: Colors.white.withOpacity(0.5),  // Hafif beyaz arka plan
                    filled: true,  // Arka planın aktif olmasını sağlar
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
            
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black.withOpacity(0.2))
                    ),
                    suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                      fillColor: Colors.white.withOpacity(0.5),  // Hafif beyaz arka plan
                      filled: true,  // Arka planın aktif olmasını sağlar
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.2))
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ],
    );
  }
}


class loginWithEmail extends StatelessWidget {
  const loginWithEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Mobile Phone",
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
              fillColor: Colors.white.withOpacity(0.5),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2))
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2))
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
              fillColor: Colors.white.withOpacity(0.5), 
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2))
              ),
              
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));}, child: Text("Forgot Password?", style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 14), textAlign: TextAlign.end)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class tabbarSection extends StatelessWidget {
  final List<Widget> children;
  const tabbarSection({
    super.key, required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 2, 
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Container(
                  child: TabBar(
                    // labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Mobile Phone'),
                      Tab(text: 'E Mail Address'),
                    ],
                  ),
                ),
                Container(
                    height: 250, 
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.grey, width: 0.1))),
                    child: TabBarView(
                      dragStartBehavior: DragStartBehavior.start,
                      children: children ))
              ]));
  }
}