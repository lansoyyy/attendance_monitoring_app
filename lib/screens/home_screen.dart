import 'package:attendance/screens/home_screen.dart';
import 'package:attendance/screens/login_screen.dart';
import 'package:attendance/utlis/colors.dart';
import 'package:attendance/widgets/button_widget.dart';
import 'package:attendance/widgets/text_widget.dart';
import 'package:attendance/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: 40,
                      color: primary,
                    ),
                  ),
                  Image.asset(
                    'assets/images/Group 31.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Mask Group.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: 'Christopher Macasio',
                          fontSize: 14,
                          fontFamily: 'Bold',
                        ),
                        TextWidget(
                          text: 'christophermacasio123@email.com',
                          fontSize: 12,
                          fontFamily: 'Regular',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Hi, Christopher.',
                    fontSize: 42,
                    fontFamily: 'Bold',
                  ),
                  TextWidget(
                    text: 'Welcome to your Class',
                    fontSize: 24,
                    fontFamily: 'Bold',
                    color: Colors.blue[100],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Today's Class",
                      fontSize: 18,
                      fontFamily: 'Bold',
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        rowWidget(
                          'Mathematics',
                          '09:30 am',
                        ),
                        rowWidget(
                          'Physics',
                          '10:40 am',
                        ),
                        rowWidget(
                          'Biology',
                          '11:45 am',
                        ),
                        rowWidget(
                          'Geography',
                          '12:10 am',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Check Attendance Report",
                      fontSize: 18,
                      fontFamily: 'Bold',
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Faculty Details",
                      fontSize: 18,
                      fontFamily: 'Bold',
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Class Details",
                      fontSize: 18,
                      fontFamily: 'Bold',
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowWidget(String title, String time) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 35,
            width: 35,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: Center(
              child: TextWidget(
                text: title[0],
                fontSize: 18,
                fontFamily: 'Bold',
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          TextWidget(
            text: title,
            fontSize: 16,
            fontFamily: 'Medium',
            color: Colors.black,
          ),
          const Expanded(
            child: SizedBox(
              width: 10,
            ),
          ),
          TextWidget(
            text: time,
            fontSize: 12,
            fontFamily: 'Medium',
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
