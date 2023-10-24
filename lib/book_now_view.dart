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
                  prefixIcon: Icon(Icons.email),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
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
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              // phone nmbr
              TextFormField(
                controller: _ctrlPhone,
                obscureText: isHide,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    child:
                        Icon(isHide ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              // city
              TextFormField(
                controller: _ctrlCity,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Fluttertoast.showToast(
                  //     msg:
                  //         "Email : ${_ctrlEmail.text} & Password ${_ctrlPass.text}",
                  //     backgroundColor: Colors.green);
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //   '/flutter/',
                  //   (route) => false,
                  // );
                },
                icon: const Icon(Icons.check_box),
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
