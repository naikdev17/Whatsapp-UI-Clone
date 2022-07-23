import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:async/async.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image == null ? Text("Add Image") : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _optiondilogbox,
        child: Icon(Icons.add_a_photo),
        backgroundColor: Color(0xff25D366),
      ),
    );
  }

  Future<void> _optiondilogbox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: double.infinity,
            child: AlertDialog(
              title: Text(
                "Take Photo",
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    GestureDetector(
                      child: Text(
                        "Open Camera",
                        style: TextStyle(fontSize: 16),
                      ),
                      onTap: opemcamera,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: GestureDetector(
                        child: Text("Select From Gallery"),
                        onTap: opengallery,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future<File?> opemcamera() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File;
    });
  }

  Future opengallery() async {
    var picture = ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = picture as File;
    });
  }
}
