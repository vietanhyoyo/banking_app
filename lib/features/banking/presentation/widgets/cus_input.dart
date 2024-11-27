import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusInput extends StatefulWidget {
  final String? hintText;
  final bool isPassword;
  final ValueChanged<String> onChanged;

  const CusInput({super.key, this.hintText, this.isPassword = false, required this.onChanged});

  @override
  _CusInputState createState() => _CusInputState();
}

class _CusInputState extends State<CusInput> {
  bool _isObscured = true; 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        style: AppText.bodyMD,
        onChanged: widget.onChanged,
        obscureText:
            widget.isPassword ? _isObscured : false, 
        decoration: InputDecoration(
          hintText: widget.hintText ?? "",
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.sp, vertical: 12.sp),
          border: InputBorder.none,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured; 
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
