

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:pinput/pinput.dart';
import 'package:pqr/presentation/components/TButton.dart';

class ConfirmNumberPage extends StatelessWidget {
  const ConfirmNumberPage({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = TextEditingController();
    final focusNode = FocusNode();


    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(5),
      ),
    );

    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 1,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      appBar: AppBar(
        title:  Text('Confirm Number', style: TextStyle(color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold,fontSize: 22)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Column(
        children: [
          const SizedBox(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Enter the 6-digit password we sent to your mobilephone in the field below.", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14, ),textAlign: TextAlign.center),
                const SizedBox(height: 20),
                Center(
                          child: Pinput(
                            length: 6,
                            controller: controller,
                            pinAnimationType: PinAnimationType.slide,
                            focusNode: focusNode,
                            defaultPinTheme: defaultPinTheme,
                            showCursor: true,
                            // cursor: cursor,
                            preFilledWidget: preFilledWidget,
                            
                          )),
                const SizedBox(height: 40),
                Text("Time Remaining", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14, ),textAlign: TextAlign.center),
                const SizedBox(height: 10),
                TimerCountdown(
                    timeTextStyle: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 32),
                    enableDescriptions: false,
                    format: CountDownTimerFormat.secondsOnly,
                    endTime: DateTime.now().add(
                     const Duration(
                        seconds: 180,
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ekleme: Column'un minimum boyutta olmasını sağlar
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TButton(
                onTap: () {},
                title: "Confirm",
              ),
              const SizedBox(height: 10), // Ekleme: Butonlar arasında biraz boşluk bırakmak için
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive the code? "),
                  InkWell(
                    onTap: () {},
                    child: Text("Resend", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}