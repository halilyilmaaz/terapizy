
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pqr/presentation/components/TButton.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TherapistDetailPage extends StatefulWidget {
  const TherapistDetailPage({super.key});

  @override
  State<TherapistDetailPage> createState() => _TherapistDetailPageState();
}

class _TherapistDetailPageState extends State<TherapistDetailPage> {

  late final PageController _pageViewController;

  @override
  void initState() {
     _pageViewController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      appBar: AppBar(
        title: const Text("Therapist profil"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
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
          SizedBox(height: 10.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            const  CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: CircleAvatar(
                  radius: 36,
                ),
              ),
              SizedBox(height: 10.h),
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
            ],
          ),
          const Spacer(),
          Container(
            height: 450.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(30),
              ),
            ),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageViewController,
              children:[
                TherapistProfilMainAreasPage(
                  onTap: (){
                    _pageViewController.animateToPage(1, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                  },
                ),
                TherapistProfilSelectDatePage(
                  onTap: (){
                    _pageViewController.animateToPage(0, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                  },
                ),
              ],
            
            ),
          )
        ],
      )
    );
  }
}

class TherapistProfilSelectDatePage extends StatelessWidget {
  final void Function()? onTap;
  const TherapistProfilSelectDatePage({
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: 
      Column( 
        children: [
          InkWell(onTap: onTap, child:
           Padding(
             padding: EdgeInsets.only(left: 10.w, top: 10.h),
             child: const Align(alignment: Alignment.topLeft,  child: Icon(Icons.arrow_back, color: Color(0xFF463a67))),
           )),
            Padding(
              padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 5.h),
              child: const Text("At least I pieces for pre-interview session suggest a date.", style: TextStyle(fontSize: 16, color: Color(0xFF987775)),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 10.h),
    
            // DatePicker
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SfDateRangePicker(
                headerHeight: 40.h,
                headerStyle: const DateRangePickerHeaderStyle(
                  backgroundColor: Colors.transparent,
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(fontSize: 16, color: Color(0xFF463a67), fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.transparent,
              // onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
                                    ),
            ),
    
    
           
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TButton(onTap: (){
    
              }, title: "Yes Create a appointment", color: const Color(0xFF463a67)),
            ),
        ],
      )
    );
  }
}

class TherapistProfilMainAreasPage extends StatelessWidget {
  final void Function()? onTap;
  const TherapistProfilMainAreasPage({
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        const Text("Main areas of expertise", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 10,
          children: [
            Chip(label: const Text("Depression"), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            Chip(label: const Text("Depression"), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            Chip(label: const Text("Depression"), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          ],
        ),
        SizedBox(height: 20.h),
                    
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFedd9ca)),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 8),
                  child: const Text("Book and appointment", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                Divider(color: Color(0xFFedd9ca),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.date_range, size: 40.h)),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.h),
                        Text("Earlies Appointment", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold)),
                        SizedBox(height: 4.h),
                        Text("15 October 09:00", style: TextStyle(fontSize: 18, color: Color(0xFF987775), fontWeight: FontWeight.bold)),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: InkWell(
                        onTap: onTap,
                        child: Container(
                          height: 40.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFF5e87b8),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Divider(thickness: 2, color: Color(0xFFedd9ca)),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Education", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus ut ante tincidunt aliquam", style: TextStyle(
            fontSize: 14, color: Colors.grey.shade700
          )),
          Text("About", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus ut ante tincidunt aliquam", style: TextStyle(
            fontSize: 14, color: Colors.grey.shade700
          ),),
          Text("About", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus ut ante tincidunt aliquam", style: TextStyle(
            fontSize: 14, color: Colors.grey.shade700
          ),),
          Text("About", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus ut ante tincidunt aliquam", style: TextStyle(
            fontSize: 14, color: Colors.grey.shade700
          ),),
            ],
          ),
        )
      ],
                    ),
    );
  }
}


// TherapistProfilAppointmentCreatedPage