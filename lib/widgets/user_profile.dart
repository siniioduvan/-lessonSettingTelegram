import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Настройки')),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class _MenuBlock extends StatelessWidget {
  const _MenuBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(),
    );
  }
}



class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _Avatar(),
          SizedBox(height: 10),
          _NameAndSurname(),
          SizedBox(height: 10),
          _Phone(),
          SizedBox(height: 10),
          _TelegramNick(),
        ],
      ),
    );
  }
}


class _TelegramNick extends StatelessWidget {
  const _TelegramNick({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text ('@siniioduvan',
    style: TextStyle(
      fontSize: 14,
      color: Colors.grey,
    ),);
  }
}

class _Phone extends StatelessWidget {
  const _Phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('+7 (927) 632 85 62',
    style: TextStyle(
      fontSize: 14,
      color: Colors.grey,
    ),);
  }
}

class _NameAndSurname extends StatelessWidget {
  const _NameAndSurname({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Anton Bubnov',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),);
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width:100,
        height: 100,
        child: Placeholder());
  }
}
