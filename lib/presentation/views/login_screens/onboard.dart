import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:pqr/presentation/components/TButton.dart';
import 'package:pqr/presentation/views/login_screens/login.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> with TickerProviderStateMixin {
  late PageController _controller;
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

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _controllermesh = MeshGradientController(points: points, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllermesh.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: MeshGradient(
              controller: _controllermesh,
              options: MeshGradientOptions(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemCount: contents.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: (width >= 840) ? 20 : 10,
                            ),
                            const SizedBox(height: 280),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: width * 0.6,
                                  child: Text(
                                    contents[index].title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: (width <= 550) ? 30 : 35,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                      child: TButton(onTap: (){
                          if(_currentPage == 0) {
                            _controller.nextPage(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeIn,
                                      );
                          } else if(_currentPage == 1) {
                            _controller.nextPage(
                                        duration: const Duration(milliseconds: 200),
                                        curve: Curves.easeIn,
                                      );
                          } else if(_currentPage == 2) {
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                          }
                        },
                        title: "Keep Going",
                        ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingContents {
  final String title;

  OnboardingContents({
    required this.title,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Want to get in the mood?",
  ),
  OnboardingContents(
    title: "Discover new ways!",
  ),
  OnboardingContents(
    title: "Get started now!",
  ),
];










































// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/TButton.dart';
// import 'package:mesh_gradient/mesh_gradient.dart';



// class OnboardPage extends StatefulWidget {
//   const OnboardPage({super.key});

//   @override
//   State<OnboardPage> createState() => _OnboardPageState();
// }

// class _OnboardPageState extends State<OnboardPage> with TickerProviderStateMixin {
//   late PageController _controller;
//   late final _controllermesh;
//   List<MeshGradientPoint> points = [
//     MeshGradientPoint(
//       position: const Offset(
//         0.5,
//         0.1,
//       ),
//       color: const Color(0xFFfee9d2),
//     ),
//     MeshGradientPoint(
//       position: const Offset(
//         0.1,
//         0.5,
//       ),
//       color: const Color(0xFFf5b7a8),
//     ),
//   ];

// @override
// void initState() {
//   super.initState();
//   _controller = PageController();
//   _controllermesh = MeshGradientController(
//     points: points,
//     vsync: this,
//   );
// }

// @override
// void dispose() {
//   _controller.dispose();
//   super.dispose();
// }

//   int _currentPage = 0;
//   // List colors = const [
//   //   Color(0xffffffff),
//   //   Color(0xffffffff),
//   //   Color(0xffffffff),
//   // ];

//   // AnimatedContainer _buildDots({
//   //   int? index,
//   // }) {
//   //   return AnimatedContainer(
//   //     duration: const Duration(milliseconds: 200),
//   //     decoration:  BoxDecoration(
//   //       borderRadius: const  BorderRadius.all(
//   //         Radius.circular(50),
//   //       ),
//   //       color: _currentPage == index ? Colors.green :  Colors.red,
//   //     ),
//   //     margin: const EdgeInsets.only(right: 5),
//   //     height: 10,
//   //     curve: Curves.easeIn,
//   //     width: _currentPage == index ? 30 : 10,
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Scaffold(

//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 4,
//                 child: PageView.builder(
//                   physics: const BouncingScrollPhysics(),
//                   controller: _controller,
//                   onPageChanged: (value) {
//                     setState(() {
//                       _currentPage = value;
//                     });
//                   },
//                   itemCount: contents.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: (width >= 840) ? 20 : 10,
//                           ),
//                           // Expanded(
//                           //   flex: 4,
//                           //   child: Image.asset(
//                           //     contents[index].image,
//                           //     height: MediaQuery.of(context).size.height * 0.40,
//                           //   ),
//                           // ),
//                           // SizedBox(
//                           //   height: (width >= 840) ? 20 : 10,
//                           // ),
//                           const SizedBox(height: 250),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: width * 0.6,
//                                 child: Text(
//                                   contents[index].title,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: (width <= 550) ? 30 : 35,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                   maxLines: 2,
//                                 ),
//                               ),
//                               // Text(
//                               //   contents[index].desc,
//                               //   style: TextStyle(
//                               //     fontWeight: FontWeight.w300,
//                               //     fontSize: (width <= 550) ? 17 : 25,
//                               //   ),
//                               //   textAlign: TextAlign.center,
//                               // ),
//                             ],
//                           ),
//                           const SizedBox(height: 15),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
              
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
                  
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
//                       child: TButton(onTap: (){
//                           if(_currentPage == 0) {
//                             _controller.nextPage(
//                                         duration: const Duration(milliseconds: 200),
//                                         curve: Curves.easeIn,
//                                       );
//                           } else if(_currentPage == 1) {
//                             _controller.nextPage(
//                                         duration: const Duration(milliseconds: 200),
//                                         curve: Curves.easeIn,
//                                       );
//                           } else if(_currentPage == 2) {
                            
//                             // pushReplacementWithoutNavBar(context, MaterialPageRoute(builder: (context) => URLsEnum.welcome.page));
//                           }
//                         },
//                         title: "Keep Going",
//                         ),
//                     ),
//                     const SizedBox(height: 5),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OnboardingContents {
//   final String title;
//   // final String image;
//   // final String desc;

//   OnboardingContents({
//     required this.title,
//     // required this.image,
//     // required this.desc,
//   });
// }

// List<OnboardingContents> contents = [
//   OnboardingContents(
//     title: "Want to get in the mood ?",
//     // image: "assets/images/onboard1.png",
//     // desc: "Lorem innovative digital financial planner and management Lorem innovative digital financial ",
//   ),
//   OnboardingContents(
//     title: "2Want to get in the mood ?",
//     // image: "assets/images/onboard1.png",
//     // desc: "Lorem innovative digital financial planner and management Lorem innovative digital financial ",
//   ),
// ];

