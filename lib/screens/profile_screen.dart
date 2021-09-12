import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:test_finance/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appbar(),
            ProfileBody(),
          ],
        ),
      ),
    );
  }

  Row _appbar() {
    return Row(
      children: [
        SizedBox(width: 44),
        Expanded(
          child: Text(
            'user888',
            textAlign: TextAlign.center,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
          ),
        ),
      ],
    );
  }
}
