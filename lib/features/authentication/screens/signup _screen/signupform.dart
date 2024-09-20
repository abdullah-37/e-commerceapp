// import 'package:e_commerce_app/utils/constants/sizes.dart';
// import 'package:e_commerce_app/utils/helprs/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          // First name last name row
          Row(
            children: [
              // First name
              Expanded(
                child: MyTextfield(
                  textlabel: 'First Name',
                  labelicon: Icon(Iconsax.user),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              // Last name
              Expanded(
                  child: MyTextfield(
                textlabel: 'Last Name',
                labelicon: Icon(Iconsax.user),
              ))
            ],
          ),
          SizedBox(
            height: 18,
          ),
          MyTextfield(
            textlabel: 'Username',
            labelicon: Icon(Iconsax.user_edit),
          ),
          SizedBox(
            height: 18,
          ),
          MyTextfield(
            textlabel: 'Email',
            labelicon: Icon(Iconsax.direct),
          ),
          SizedBox(
            height: 18,
          ),
          MyTextfield(
            textlabel: 'Phone Number',
            labelicon: Icon(Iconsax.call),
          ),
          SizedBox(
            height: 18,
          ),
          MyTextfield(
            textlabel: 'Password',
            labelicon: Icon(Iconsax.password_check),
          ),
        ],
      ),
    );
  }
}

// My Text field widget
class MyTextfield extends StatelessWidget {
  const MyTextfield({
    super.key,
    required this.textlabel,
    required this.labelicon,
  });
  final String textlabel;
  final Icon labelicon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: textlabel,
        prefixIcon: labelicon,
      ),
    );
  }
}
