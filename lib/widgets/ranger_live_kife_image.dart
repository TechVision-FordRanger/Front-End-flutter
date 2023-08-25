import 'package:flutter/material.dart';

class RangerLiveKifeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Faz o container ocupar toda a largura disponível
      child: Image.asset(
        'assets/images/ranger_live_kife.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
