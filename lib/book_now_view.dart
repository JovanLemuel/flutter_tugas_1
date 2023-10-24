import 'package:email_validator/email_validator.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class BookNowView extends StatefulWidget {
  const BookNowView({super.key});

  @override
  State<BookNowView> createState() => _BookNowViewState();
}

class _BookNowViewState extends State<BookNowView> {
  final _bookingKey = GlobalKey<FormState>();
  final _ctrlName = TextEditingController();
  final _ctrlEmail = TextEditingController();
  final _ctrlPhone = TextEditingController();
  final _ctrlCity = TextEditingController();


  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Form(
          key: _bookingKey,
          child: Column(
            children: [
              // full name
              TextFormField(
                controller: _ctrlName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_circle),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name cannot be left empty';
                  }
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              // email
              TextFormField(
                controller: _ctrlEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email cannot be left empty';
                  }
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              // phone nmbr
              TextFormField(
                controller: _ctrlPhone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.local_phone),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone number cannot be left empty';
                  }
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              // city
              TextFormField(
                controller: _ctrlCity,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'City number cannot be left empty';
                  }
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: const Text('AlertDialog description'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                          '/flutter/',
                          (route) => false,
                          );
                        },
                        child: const Text('ok'),
                      ),
                    ],
                  ),
                ),
                child: const Text('Book Now'),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton.icon(
                // onPressed: () {
                  // Fluttertoast.showToast(
                  //     msg:
                  //         "Email : ${_ctrlEmail.text} & Password ${_ctrlPass.text}",
                  //     backgroundColor: Colors.green);
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //   '/flutter/',
                  //   (route) => false,
                  // );
                // },
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                icon: const Icon(Icons.save),
                label: const Text("Submit"),
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                    backgroundColor: Colors.amber[700],
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
    // return const Placeholder();
  }
}
