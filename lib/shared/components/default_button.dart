import 'package:flutter/material.dart';

Widget defaultButton({
  required Function function,
  required String title,
  required Color buttonColor,
  double? width,
  double? height,
  double fontSize = 24,
  FontWeight fontWeight = FontWeight.bold,
  Color textColor = Colors.white,
  double borderRadius = 0,
}) {
  return Container(
    width: width,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      color: buttonColor,
    ),
    child: MaterialButton(
      onPressed: () {
        function();
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: textColor),
      ),
    ),
  );
}

Widget defaultTextField({
  bool useHint = false,
  required double verticalContentPadding,
  required double horizontalContentPadding,
  required TextEditingController controller,
  required TextInputType keyboardType,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  isPassword = false,
  showKeyboard = true,
  required Function validate,
  required String labelName,
  double borderRadius = 0,
  IconData? prefix,
  IconData? suffix,
  IconButton? suffixIconButton,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    onFieldSubmitted: (value) {
      if (onSubmit != null) {
        onSubmit!();
      }
    },
    onChanged: (value) {
      if (onChange != null) {
        onChange!();
      }
    },
    onTap: (){
      if (onTap != null) {
        onTap!();
      }
    },
    obscureText: isPassword,
    validator: (value) => validate(value),
    decoration: InputDecoration(
      hintText: useHint ? labelName : null,
      contentPadding: EdgeInsets.symmetric(
          vertical: verticalContentPadding,
          horizontal: horizontalContentPadding),
      labelText: useHint ? null : labelName,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      prefixIcon: prefix != null ? Icon(prefix) : null,
      suffixIcon: suffix != null
          ? (suffixIconButton ?? Icon(suffix))
          : (suffixIconButton),
    ),
    readOnly: !showKeyboard,
  );
}
