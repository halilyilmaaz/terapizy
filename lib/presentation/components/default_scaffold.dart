
import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  final bool isAppBarEnabled;
  final Widget? body;
  final Widget? appBar;
  final bool? drawerEnabled;
  const DefaultScaffold({super.key, required this.isAppBarEnabled, this.body, this.appBar, this.drawerEnabled});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAppBarEnabled ? appBar as PreferredSizeWidget? : null,
      body: body,
      drawer: drawerEnabled ?? false ? Drawer(
        
      ) : null,
    );
  }
}