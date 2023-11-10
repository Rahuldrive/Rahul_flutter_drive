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
      if (key.startsWith('email-')) {
        final email = key.substring(6); // Remove 'email-' prefix
        final name = prefs.getString('name-$email');
        final age = prefs.getInt('age-$email');
        final phone = prefs.getString('phone-$email');
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
      appBar: AppBar(title: Text('Form Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email.';
                  } else if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address (e.g., example@example.com).';
                  } else if (records
                      .any((record) => record.contains('Email: $value,'))) {
                    return 'Email already exists.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: phoneController,
                maxLength: 10,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a phone number.';
                  } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Phone should contain only digits.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
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
              SizedBox(height: 20),
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
    final email =
        emailController.text.toLowerCase(); // Store email in lowercase
    prefs.setString('name-$email', nameController.text);
    prefs.setString('email-$email', email);
    prefs.setString('phone-$email', phoneController.text);
    prefs.setInt('age-$email', int.parse(ageController.text));
    records.add(email);
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
      if (key.startsWith('email-')) {
        final email = key.substring(6); // Remove 'email-' prefix
        final name = prefs.getString('name-$email');
        final age = prefs.getInt('age-$email');
        final phone = prefs.getString('phone-$email');
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
      appBar: AppBar(title: Text('List Of Data')),
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
                  // sendEmail(records[index]); // You can implement sending email functionality here
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

  // void sendEmail(String data) {} // You can implement sending email functionality here

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
