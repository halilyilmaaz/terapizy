import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pqr/presentation/views/welcome_screens/therapist_profil_page.dart';

class AnketPage extends StatefulWidget {
  const AnketPage({super.key});

  @override
  State<AnketPage> createState() => _AnketPageState();
}

class _AnketPageState extends State<AnketPage> {
  List<bool> isCheckedList = [false, false, false];

  void selectCard(int index) {
    setState(() {
      for (int i = 0; i < isCheckedList.length; i++) {
        isCheckedList[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text('Halil', style: TextStyle(fontSize: 36)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'We have listed the most suitable therapist for you!',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              TherapistCard(
                title: 'Halil',
                job: 'developer',
                viewDetail: () => selectCard(0),
                isChecked: isCheckedList[0],
              ),
              TherapistCard(
                title: 'Yılmaz',
                job: 'flutter',
                viewDetail: () => selectCard(1),
                isChecked: isCheckedList[1],
              ),
              TherapistCard(
                title: 'Merhaba',
                job: 'test',
                viewDetail: () => selectCard(2),
                isChecked: isCheckedList[2],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TherapistProfilPage()));
                },
                child:
                 Container(
                  
                  height: 40.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF463a67),
                  ),
                  child: const Center(child: Text("Choose Therapist", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
                                 ),
              ),
            ],
          )
      ),
    );
  }
}

class TherapistCard extends StatelessWidget {
  final String title;
  final String job;
  final void Function()? viewDetail;
  final bool isChecked;

  const TherapistCard({
    super.key,
    required this.title,
    required this.job,
    required this.viewDetail,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: isChecked ? const Color(0xFFfde5d6) : const Color(0xFFfef3ec),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFfcd5ba)),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/back_avatar.png'),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  job,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: viewDetail,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFfcd5ba)),
                ),
                child: isChecked
                    ? const CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xFF463a67),
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 12),
                      )
                    : const CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xFFfef4ed),
                        child: SizedBox(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
