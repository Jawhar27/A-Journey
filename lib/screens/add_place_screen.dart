import 'package:flutter/material.dart';

import '../widgets/add_image.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add product';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _textEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, //for button for take full width

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: _textEditController,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AddImage(),
                ],
              ),
            ),
          ),
          RaisedButton.icon(
            onPressed: () {}, icon: Icon(Icons.add), label: Text('Add Place'),

            //remove the margin around the button and fix in the end
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
