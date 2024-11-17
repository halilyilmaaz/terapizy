

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StandartAppBar extends StatelessWidget implements PreferredSizeWidget{
  const StandartAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        title: SvgPicture.asset("assets/app_icon.svg"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

}