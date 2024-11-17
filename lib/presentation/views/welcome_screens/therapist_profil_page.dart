

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pqr/presentation/components/TButton.dart';
import 'package:pqr/presentation/views/home/home_page.dart';
import 'package:pqr/presentation/views/welcome_screens/therapist_detail_page.dart';

class TherapistProfilPage extends StatelessWidget {
  const TherapistProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      appBar: AppBar(
        title: const Text("Therapist profil"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const  CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: CircleAvatar(
                  radius: 56,
                ),
              ),
              SizedBox(height: 20.h),
              const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                "Halil",
                style: TextStyle(fontSize: 22),
              ),
              
          ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                "Developer",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TherapistDetailPage()));
                      },
                      child: const Text(
                        "view profile >",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          const Spacer(),
          Container(
            height: 280.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                Text("Get the know therapist", style: TextStyle(fontSize: 18.sp)),
                SizedBox(height: 15.h),
                Text("By scheduling a free 15 minute consultation you can meet your therapist ! ", style: TextStyle(fontSize: 12.sp), textAlign: TextAlign.center),
                SizedBox(height: 15.h),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Divider(),
                ),
                SizedBox(height: 15.h),
                SizedBox(width: 200.w, height: 50.h ,child: TButton(onTap: (){},title: "Ön görüşme planla")),
                SizedBox(height: 15.h),
                InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                 }, child: Text("Go to Homepage", style: TextStyle(fontSize: 12.sp, decoration: TextDecoration.underline), textAlign: TextAlign.center)),
              ],
            ),
          )
        ],
      )
    );
  }
}