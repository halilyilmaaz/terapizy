

import 'package:flutter/material.dart';
import 'package:pqr/presentation/components/standart_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFfeece3),
      appBar:  StandartAppBar(),
      
      
    );
  }
}
