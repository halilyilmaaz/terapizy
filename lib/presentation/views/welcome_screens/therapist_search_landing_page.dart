


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:pqr/presentation/views/welcome_screens/questions_pages.dart';

class TherapistSearchLandingPage extends StatefulWidget {
  const TherapistSearchLandingPage({super.key});

  @override
  State<TherapistSearchLandingPage> createState() => _TherapistSearchLandingPageState();
}

class _TherapistSearchLandingPageState extends State<TherapistSearchLandingPage> with TickerProviderStateMixin {
  
  late final MeshGradientController _controllermesh;
  List<MeshGradientPoint> points = [
    MeshGradientPoint(
      position: const Offset(0.1, 0.5),
      color: const Color(0xFFf5b7a8),
    ),
    MeshGradientPoint(
      position: const Offset(0.5, 0.1),
      color: const Color(0xFFfee9d2),
    ),
    MeshGradientPoint(
      position: const Offset(0.1, 0.5),
      color: const Color(0xFFf5b7a8),
    ),
  ];

@override
  void initState() {
    super.initState();
    _controllermesh = MeshGradientController(points: points, vsync: this);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AnketPage()));
    });
  }

   @override
  void dispose() {
    _controllermesh.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: MeshGradient(
              controller: _controllermesh,
              options: MeshGradientOptions(),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Image.asset('assets/back_avatar.png', width: 700, height: 700),
            ),
          ),
          Center( child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CircleAvatar(
                //   radius: 50,
                //   backgroundImage: const AssetImage('assets/images/avatar.png'),
                // ),
                const SizedBox(height: 14),
                const Text('Halil', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(height: 14),
                Text('Terapiz select the most suitable therapist for you ', style: TextStyle(fontSize: 16, color: Colors.grey.shade600),textAlign: TextAlign.center,),
              
              ],
            ),
          ),),
          
        ],
        
      ),
      
    );
  }
}