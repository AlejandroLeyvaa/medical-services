import 'package:flutter/material.dart';
import 'package:medical_services/theme/app_theme.dart';
import 'package:medical_services/widgets/copy_text.dart';
import 'package:medical_services/widgets/form/custom_form.dart';
import 'package:medical_services/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double toolbarHeight = 50;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: toolbarHeight,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          _TextContainer(
            size: size,
            toolbarHeight: toolbarHeight,
          ),
          FormContainer(size: size, toolbarHeight: toolbarHeight)
        ]),
      ),
    );
  }
}

class FormContainer extends StatelessWidget {
  const FormContainer({
    Key? key,
    required this.size,
    required this.toolbarHeight,
  }) : super(key: key);

  final size;
  final double toolbarHeight;

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'user_name': '',
      'email': '',
      'password': '',
    };

    return Container(
        width: double.infinity,
        height: (size.height * 0.5) - toolbarHeight,
        padding: const EdgeInsets.all(24),
        child: CustomForm(formValues: formValues, inputs: [
          CustomInput(
            formValues: formValues,
            formField: 'user_name',
            icon: Icons.person,
            iconColor: AppTheme.primary,
            hintText: 'User Name',
            isFilled: false,
            fillColor: AppTheme.primary,
          ),
          const SizedBox(height: 16),
          CustomInput(
            formValues: formValues,
            formField: 'email',
            icon: Icons.email,
            iconColor: AppTheme.primary,
            hintText: 'Email...',
            isFilled: false,
            fillColor: AppTheme.primary,
          ),
          const SizedBox(height: 16),
          CustomInput(
            formValues: formValues,
            formField: 'password',
            icon: Icons.password,
            iconColor: AppTheme.primary,
            hintText: 'Password',
            isFilled: false,
            fillColor: AppTheme.primary,
            obscureText: true,
          ),
        ]));
  }
}

class _TextContainer extends StatelessWidget {
  final size;
  final double toolbarHeight;

  const _TextContainer(
      {Key? key, required this.size, required this.toolbarHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: (size.height * 0.5) - toolbarHeight,
        padding: const EdgeInsets.all(24),
        child: const CopyText(
          copyText: 'Create your Account',
          fontSize: 72,
        ));
  }
}
