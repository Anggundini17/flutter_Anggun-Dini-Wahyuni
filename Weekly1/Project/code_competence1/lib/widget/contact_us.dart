import 'package:code_competence1/theme/theme.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messengerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          const SizedBox(height: 15),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
            decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          const SizedBox(height: 15),
          TextFormField(
            keyboardType: TextInputType.multiline,
            controller: _messengerController,
            maxLines: 5,
            decoration: const InputDecoration(
                labelText: 'Messege',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text(
                      'Your Submitted Data',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Username  :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(_nameController.text),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Email           :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(_emailController.text),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Messenger :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(_messengerController.text)
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppThemeColor.peach),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          fixedSize:
                              MaterialStateProperty.all(const Size(100, 40)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          _nameController.clear();
                          _emailController.clear();
                          _messengerController.clear();
                        },
                        child: const Text(
                          'OK',
                          style: TextStyle(
                              color: AppThemeColor.title,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppThemeColor.peach),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
                fixedSize: MaterialStateProperty.all(const Size(100, 40)),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(
                    fontSize: 16,
                    color: AppThemeColor.title,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ));
  }
}
