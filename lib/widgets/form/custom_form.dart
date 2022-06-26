import 'package:flutter/material.dart';
import 'package:medical_services/theme/app_theme.dart';
import 'package:medical_services/widgets/widgets.dart';

class CustomForm extends StatefulWidget {
  final Map<String, String> formValues;
  final List<Widget> inputs;

  const CustomForm({Key? key, required this.inputs, required this.formValues})
      : super(key: key);

  @override
  State<CustomForm> createState() => CustomFormState(inputs, formValues);
}

class CustomFormState extends State<CustomForm> {
  final Map<String, String> formValues;
  final List<Widget> inputs;

  CustomFormState(this.inputs, this.formValues);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...inputs,
            SizedBox(height: 16),
            LargeButton(
              color: AppTheme.primary,
              textColor: AppTheme.white,
              horizontalPadding: 0,
              containerHeight: 44.0,
              buttonHeight: 44.0,
              customText: 'Sign Up',
              buttonAction: () {
                FocusScope.of(context).requestFocus(FocusNode());

                if (!_formKey.currentState!.validate()) {
                  print('Formulario no válido');
                  return;
                }

                //* imprimir valores del formulario
                print('Fields: ${formValues}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
