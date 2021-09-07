import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              style: TextStyle(
                fontSize: 17.0,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Search...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
