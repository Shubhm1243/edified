import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudyMaterial extends StatefulWidget {

  static String id = 'study_material';

  @override
  _StudyMaterialState createState() => _StudyMaterialState();
}

class _StudyMaterialState extends State<StudyMaterial> {
  late File? _file ;
  late String _fileName = '';

  @override
  void initState() {
    super.initState();
    _file = File('assets/invoice-001.pdf');
  }

  Future<void> _selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _file = File(result.files.single.path!);
        _fileName = result.files.single.name!;
      });
    }
    else {
      setState(() {
        _file = null;
        _fileName = '';
      });
    }
    _file ??= File('');
  }

  Future<void> _uploadFile() async {
    if (_file == null) {
      return;
    }

    // Upload file to Firebase Storage
    Reference ref = FirebaseStorage.instance.ref().child('pdfs/$_fileName');
    UploadTask task = ref.putFile(_file!);
    TaskSnapshot snapshot = await task;

    // Get download URL of the uploaded file
    String downloadURL = await snapshot.ref.getDownloadURL();

    // Add download URL to Firestore
    FirebaseFirestore.instance.collection('pdfs').add({
      'name': _fileName,
      'url': downloadURL,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload PDF'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _file == null
                ? Text('No file selected')
                : Text('Selected file: $_fileName'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _selectFile,
              child: Text('Select PDF file'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadFile,
              child: Text('Upload PDF file'),
            ),
          ],
        ),
      ),
    );
  }
}
