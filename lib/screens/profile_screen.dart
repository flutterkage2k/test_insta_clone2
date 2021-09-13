import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:test_finance/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ProfileBody(),
    );
  }
}
