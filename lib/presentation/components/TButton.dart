
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TButton extends StatelessWidget {
  final void Function()? onTap;
  // final String? assetLeft;
  // final String? assetRight;
  final String? title;
  final Color? color;
  final Color? textColor;
  final bool? borderEnabled;

  const TButton({
    super.key,
    required this.onTap, 
    this.title, 
    // this.assetLeft,
    // this.assetRight,
    this.color, 
    this.textColor, 
    this.borderEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: (width <= 550)
        ? const EdgeInsets.symmetric(horizontal: 5, vertical: 5)
        : EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 20),        
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: color ?? Colors.purple,
            borderRadius: BorderRadius.circular(30),
             border: (borderEnabled != null && borderEnabled == true) ? Border.all(color: Colors.grey, width: 0.5) : Border.all(color: Colors.white, width: 0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title ?? "", 
                  style: TextStyle(color: textColor ?? Colors.white , fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
              ],
              // children: [
              //   if (assetLeft != null && assetLeft!.isNotEmpty) 
              //     Image.asset(
              //       assetLeft!, 
              //       scale: (width <= 550) ? 3 : 2, 
              //       colorBlendMode: BlendMode.modulate,
              //     )
              //   else 
              //     const SizedBox(),
              //   Text(
              //     title ?? "", 
              //     style: TextStyle(color: textColor ?? Colors.white , fontSize: 18),
              //   ),
              //   if (assetRight != null && assetRight!.isNotEmpty) 
              //     Image.asset(
              //       assetRight!, 
              //       scale: (width <= 550) ? 3 : 2, 
              //       colorBlendMode: BlendMode.modulate,
              //     )
              //   else 
              //     const SizedBox(),
              // ],
            ),
          ),
        ),
      ),
    );
  }
}
