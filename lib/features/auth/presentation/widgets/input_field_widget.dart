import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFieldWidget extends StatelessWidget {
 
  final String lable;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final TextEditingController inputController;
  final int? maxLine;
  final bool prefixIconview;
  final bool sufixIconview;
  final bool passwordVisible;
  final bool? isValid;

  const InputFieldWidget(
      {super.key,
      this.onTap,
      this.isValid,
      required this.lable,
      this.validator,
      required this.inputController,
      this.maxLine,
      required this.sufixIconview,
      required this.passwordVisible,
      required this.prefixIconview});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: inputController,
      validator: isValid == true ? validator : null,
      obscureText: passwordVisible,
      maxLines: maxLine ?? 1,
      style: GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontStyle: FontStyle.normal,
        textStyle: Theme.of(context).textTheme.displayLarge,
      ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.all(20),
        suffixIcon: sufixIconview
            ? Padding(
                padding: EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                     color: Colors.pink,
                    height: 20.r,
                    width: 20.r,
                  ),
                ),
              )
            : null,
        // contentPadding: EdgeInsets.only(left: 10.w),
        prefixIcon: prefixIconview
            ? Padding(
                padding: EdgeInsets.all(15.w),
                   child: Container(
                     color: Colors.pink,
                    height: 20.r,
                    width: 20.r,
                  ),
              )
            : null,
        //    labelText: label,
        filled: true, //<-- SEE HERE
        fillColor: Colors.white, //<-- SEE HERE

        //  cursorColor: Colors.redAccent,
        hintText: lable,
        labelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: const Color(0xff474747),
          fontStyle: FontStyle.normal,
          textStyle: Theme.of(context).textTheme.displayLarge,
        ),

        hintStyle: GoogleFonts.poppins(
          color: const Color(0xff8E8E93),
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          fontStyle: FontStyle.normal,
          textStyle: Theme.of(context).textTheme.displayLarge,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: .8,
            color: Color(0xff00AC97),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: .8,
            color: Color(0xff00AC97),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: .8,
            color: Color(0xff00AC97),
          ),
        ),
        errorStyle: GoogleFonts.poppins(
          color: Colors.redAccent,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          textStyle: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
