import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => FirstPage(),
      '/second': (context) => SecondPage(),
    },
  ));
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: phoneController,
                maxLength: 10,
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a phone number.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
                validator: (value) {
                  if (value!.isEmpty ||
                      int.tryParse(value) == null ||
                      int.parse(value) < 18 ||
                      int.parse(value) > 25) {
                    return 'Age should be between 18 and 25.';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save data locally using shared preferences
                    saveData();
                    Navigator.pushNamed(context, '/second');
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final email = emailController.text;
    prefs.setString('name', nameController.text);
    prefs.setString('email', email);
    prefs.setString('phone', phoneController.text);
    prefs.setInt('age', int.parse(ageController.text));
    // Use the email as the key for uniqueness
    prefs.setString(email, email);
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    ageController.clear();
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> records = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();
    keys.forEach((key) {
      if (key != 'name' && key != 'phone' && key != 'age' && key != 'email') {
        final email = key;
        final name = prefs.getString('name');
        final age = prefs.getInt('age');
        final phone = prefs.getString('phone');
        final record = 'Email: $email, Name: $name, Age: $age, Phone: $phone';
        setState(() {
          records.add(record);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' List Of Data')),
      body: RecordList(records: records),
    );
  }
}

class RecordList extends StatelessWidget {
  final List<String> records;

  RecordList({required this.records});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: records.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(records[index]),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  sendEmail(records[index]);
                },
                child: Text('Mail'),
              ),
              TextButton(
                onPressed: () {
                  viewData(context, records[index]);
                },
                child: Text('View'),
              ),
            ],
          ),
        );
      },
    );
  }

  void sendEmail(String data) {}

  void viewData(BuildContext context, String data) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Text(data),
        );
      },
    );
  }
}
