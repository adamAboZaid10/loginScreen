 import 'package:flutter/material.dart';

 Widget defaultFormField({
   required TextEditingController? controller,
   required TextInputType? type,
   ValueChanged<String>? onFieldSubmitted,
   ValueChanged<String>? onChanged,
   GestureTapCallback? onTap,
   required FormFieldValidator<String>? validator,
   required String? labelText,
   required Widget? prefixIcon,
   IconData? suffix,
   Function? suffixPressed,
   bool obscure =false,
 }) =>TextFormField(

   controller:controller ,
   keyboardType: type ,
   onFieldSubmitted: onFieldSubmitted,
   onTap: onTap,
   onChanged: onChanged,
   validator: validator,
   obscureText: obscure,
   decoration:  InputDecoration(
     labelText: labelText,
     border: const OutlineInputBorder(),
     prefixIcon: prefixIcon,
       suffixIcon: suffix != null ? IconButton(
         onPressed: ()
         {
           suffixPressed!();
         },
         icon: Icon(suffix),
       ) : null,
   ),
 );