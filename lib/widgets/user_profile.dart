import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Настройки')),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
    return const Text ('@siniioduvan');
  }
}

class _Phone extends StatelessWidget {
  const _Phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('+7 (927) 632 85 62');
  }
}

class _NameAndSurname extends StatelessWidget {
  const _NameAndSurname({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Anton Bubnov');
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
