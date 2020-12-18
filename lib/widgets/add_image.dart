import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File _selectedImage;

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final pickedFile =
        await picker.getImage(source: ImageSource.camera, maxWidth: 600);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
            ),
            alignment: Alignment.center,
            child: _selectedImage != null
                ? Image.file(
                    _selectedImage,
                    fit: BoxFit.cover,
                  )
                : Text(
                    'No Image Selected',
                    textAlign: TextAlign.center,
                  ),
          ),
          Expanded(
              child: FlatButton.icon(
            label: Text('Add a picture'),
            icon: Icon(Icons.camera),
            onPressed: _takePicture,
          ))
        ],
      ),
    );
  }
}
