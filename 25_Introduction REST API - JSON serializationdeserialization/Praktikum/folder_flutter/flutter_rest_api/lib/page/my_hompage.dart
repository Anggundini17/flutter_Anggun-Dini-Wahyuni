import 'package:flutter/material.dart';
import 'package:flutter_rest_api/service_api/service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  String? result;

  final myService = ServiceApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API IMPLEMENTATION'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/imagePage');
              },
              icon: Icon(Icons.picture_in_picture))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'POST, GET, PUT DATA API WITH DIO',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          buildForm(context),
          buildButton(context),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              result ?? "".toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nama',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // text field nya
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _phoneController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nomor',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // text field nya
                ],
              ))
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              child: const Text(
                "POST",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final service = ServiceApi();

                final _result = await service.postData(
                  name: _nameController.text,
                  phone: _phoneController.text,
                );

                result = _result.toString();

                setState(() {});
              }),
          ElevatedButton(
              child: const Text(
                "GET",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final service = ServiceApi();

                final _result = await service.readData();
                final result = _result.toString();
                setState(() {});
              }),
          ElevatedButton(
              // minWidth: 400,

              child: const Text(
                "PUT",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                final service = ServiceApi();

                final _result = await service.updateData(
                    name: _nameController.text, phone: _phoneController.text);
                result = _result.toString();
                setState(() {});
              }),
        ],
      ),
    );
  }
}
