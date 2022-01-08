import 'package:flutter/material.dart';

class ModelScreen extends StatefulWidget {
  static const String id = 'moder_screen';

  @override
  _ModelScreenState createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Brand',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                DropdownButton(
                  value: 'T-Shirt',
                  items: <String>['T-Shirt', 'Hoodie', 'Pants', 'Shoes']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {
                    print('hello world');
                  },
                ),
                SizedBox(height: 20),
                DropdownButton(
                  value: 'blue',
                  items: <String>['black', 'white', 'blue', 'brown']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {
                    print('hello world');
                  },
                ),
                SizedBox(height: 20),
                DropdownButton(
                  value: 'M',
                  items: <String>['S', 'M', 'L', 'XL'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {
                    print('hello world');
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Add to firebase');
                  },
                  child: Text('Add to wardrobe'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
