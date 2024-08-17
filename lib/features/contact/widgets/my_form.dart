import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/contact/widgets/input_component_with_label.dart';
import 'package:ross_portfolio/features/contact/widgets/submit_button.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if(_formKey.currentState!.validate()) {
      debugPrint('Name: ${_nameController.text}');
      debugPrint('Email: ${_emailController.text}');
      debugPrint('Subject: ${_subjectController.text}');
      debugPrint('MMessage: ${_messageController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputComponentWithLabel(
            label: 'Name',
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }

              if(value.trim().length < 5) {
                return 'Length of name must be greater than 5';
              }
              return null;
            },
          ),
          InputComponentWithLabel(
            label: 'Email',
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your email';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          InputComponentWithLabel(
              label: 'Subject', controller: _subjectController),
          InputComponentWithLabel(
            label: 'Message',
            controller: _messageController,

          ),
          SubmitButton(
            onTap: _onSubmit,
          ),
        ],
      ),
    );
  }
}
