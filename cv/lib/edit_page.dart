// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  EditPage({super.key, required this.value});
  String value;
  static const routeName = '/edit-page';
  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void _save() async {
    _formKey.currentState!.save();
    Navigator.pop(context, widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Resume Details'),
        backgroundColor: const Color.fromARGB(255, 33, 117, 243),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 200,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    maxLines: 50,
                    // controller: _controller,
                    initialValue: widget.value,
                    onSaved: (newValue) {
                      setState(() {
                        widget.value = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: _save,
                child: Container(
                  width: 100,
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(30)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Save',
                          style: TextStyle(
                            color: Color.fromARGB(255, 33, 117, 243),
                            fontWeight: FontWeight.bold,
                          )),
                      Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 33, 117, 243),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
