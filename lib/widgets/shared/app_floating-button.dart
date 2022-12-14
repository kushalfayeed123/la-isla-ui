import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () => entryPageController.changeTabIndex(2),
          child: Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.transparent),
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFF39DB6), Color(0xFF6A4162)],
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(9.0),
              child: Image.asset(
                LOGO,
                fit: BoxFit.scaleDown,
                width: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
