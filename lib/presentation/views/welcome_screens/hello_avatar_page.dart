

import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:pqr/presentation/components/TButton.dart';
import 'package:pqr/presentation/views/welcome_screens/therapist_search_landing_page.dart';

class HelloAvatarPage extends StatefulWidget {
  const HelloAvatarPage({super.key});

  @override
  State<HelloAvatarPage> createState() => _HelloAvatarPageState();
}

class _HelloAvatarPageState extends State<HelloAvatarPage> with TickerProviderStateMixin {
  
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

          Center( child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("👋", style: TextStyle(fontSize: 36),),
                // CircleAvatar(
                //   radius: 50,
                //   backgroundImage: const AssetImage('assets/images/avatar.png'),
                // ),
                const SizedBox(height: 14),
                const Text('Hi Halil', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(height: 14),
                Text('In order to find the most s In order to find the most sIn order to find the most s' * 2, style: TextStyle(fontSize: 16, color: Colors.grey.shade600),textAlign: TextAlign.center,),
              ],
            ),
          ),),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 60,
                width: 140,
                child: TButton(
                  color: const Color(0xFF7942ba),
                  title: "Let's start",
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmNumberPage()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HelloAvatarPage()));
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  TherapistSearchLandingPage()));
                  },
                ),
              ),
              const SizedBox(height: 10),
            ],
                    ),
                  ),
          ),
        ],
        
      ),
      
    );
  }
}