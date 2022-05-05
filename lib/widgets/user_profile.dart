import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserProfile extends StatelessWidget {
  final List<_MenuRowData> menuRow = [
    _MenuRowData(Icons.favorite, 'Избранное'),
    _MenuRowData(Icons.phone, 'Звонки'),
    _MenuRowData(Icons.computer, 'Устройства'),
    _MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  final List<_MenuRowData> menuRowTwo = [
    _MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    _MenuRowData(Icons.privacy_tip, 'Конфиденциальность'),
    _MenuRowData(Icons.memory, 'Данные и память'),
    _MenuRowData(Icons.brush, 'Оформление'),
    _MenuRowData(Icons.language, 'Язык'),
  ];

  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(child: Text('Настройки')),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _UserInfo(),
            const SizedBox(height: 15),
            _MenuBlock(menuRow: menuRow),
            SizedBox(height: 15),
            _MenuBlock(menuRow: menuRowTwo),
          ],
        ),
      ),
    );
  }
}

class _MenuRowData {
  final IconData icon;
  final String text;

  _MenuRowData(this.icon, this.text);
}

class _MenuWidgetRow extends StatelessWidget {
  final _MenuRowData data;

  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(data.icon),
          const SizedBox(width: 20),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _MenuBlock extends StatelessWidget {
  final List<_MenuRowData> menuRow;

  const _MenuBlock({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
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
          const SizedBox(height: 15),
          const _Avatar(),
          const SizedBox(height: 5),
          const _NameAndSurname(),
          const SizedBox(height: 5),
          const _Phone(),
          const SizedBox(height: 5),
          const _TelegramNick(),
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
    return const Text(
      '@siniioduvan',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}

class _Phone extends StatelessWidget {
  const _Phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7 (927) 632 85 62',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}

class _NameAndSurname extends StatelessWidget {
  const _NameAndSurname({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Anton Bubnov',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: const Placeholder());
  }
}
