import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 12, color: Color(0XFF3797EF)),
        ));
  }

  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool tohide}) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white24)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(fontSize: 14, color: Colors.white),
              border: InputBorder.none),
        ),
      ),
    );
  }

  // static CustomTextField(
  //     {required TextEditingController controller,
  //     required String text,
  //     required bool tohide,
  //     required TextInputType textinputtype}) {
  //   return Container(
  //     height: 44,
  //     width: 343,
  //     decoration: BoxDecoration(
  //         color: Color(0XFF121212),
  //         border: Border.all(color: Color(0XFFFFFFFF)),
  //         borderRadius: BorderRadius.circular(5)),
  //     child: TextField(
  //       controller: controller,
  //       obscureText: tohide,
  //       keyboardType: textinputtype,
  //       decoration: InputDecoration(
  //           hintText: text,
  //           hintStyle: TextStyle(
  //               fontSize: 14,
  //               fontWeight: FontWeight.normal,
  //               color: Color(0XFFFFFFFF)),
  //           border: InputBorder.none),
  //     ),
  //   );
  // }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton(
      {required VoidCallback callback, required String buttoname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              )),child: Center(
              child: Text(
            buttoname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ))),
    );
  }
}
