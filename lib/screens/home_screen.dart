import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/popular_list_widget.dart';
import 'package:newsapp/widgets/reading_list_widget.dart';
import 'package:newsapp/widgets/search_field.dart';
import 'package:newsapp/widgets/title_readtime.dart';
import 'package:newsapp/widgets/user_avatar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 45.0, bottom: 0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [TitleReadTimeWidget(), UserAvatarWidget()],
                  ),
                  SizedBox(height: 30.0),
                  SearchFieldWidget(),
                  PopularListWidget(),
                  ReadingListWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
