import 'package:flutter/material.dart';

class EditUserInfoPage extends StatefulWidget {
  final Map<String, String> userInfo;
  const EditUserInfoPage({super.key, required this.userInfo});

  @override
  _EditUserInfoPageState createState() => _EditUserInfoPageState();
}

class _EditUserInfoPageState extends State<EditUserInfoPage> {
  late Map<String, String> editedUserInfo;

  @override
  void initState() {
    super.initState();
    editedUserInfo = {...widget.userInfo}; // Initialize with current user info
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User Info'),
         backgroundColor: const Color.fromRGBO(217, 183, 165, 1),
      ),
    backgroundColor: const Color.fromRGBO(217, 183, 165, 1),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: editedUserInfo['Name'],
                decoration: const InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  editedUserInfo['Name'] = value;
                },
              ),
              TextFormField(
                initialValue: editedUserInfo['Gender'],
                decoration: const InputDecoration(labelText: 'Gender'),
                onChanged: (value) {
                  editedUserInfo['Gender'] = value;
                },
              ),
              TextFormField(
                initialValue: editedUserInfo['Email'],
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  editedUserInfo['Email'] = value;
                },
              ),
               TextFormField(
                initialValue: editedUserInfo['Phone'],
                decoration: const InputDecoration(labelText: 'Phone'),
                onChanged: (value) {
                  editedUserInfo['Phone'] = value;
                },
              ),
               TextFormField(
                initialValue: editedUserInfo['Dob'],
                decoration: const InputDecoration(labelText: 'Dob'),
                onChanged: (value) {
                  editedUserInfo['Dob'] = value;
                },
              ),
               TextFormField(
                initialValue: editedUserInfo['Address'],
                decoration: const InputDecoration(labelText: 'Address'),
                onChanged: (value) {
                  editedUserInfo['Address'] = value;
                },
              ),
               const SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Return the updated info to the previous page
                    Navigator.pop(context, editedUserInfo);
                  }
                },
                child: const Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
