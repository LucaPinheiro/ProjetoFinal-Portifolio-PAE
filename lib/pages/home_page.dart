import 'package:flutter/material.dart';
import 'package:projeto_final/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfólio Pessoal'),
      ),
      body: Center(
        child: CustomCard(
          title: 'Luca Pinheiro',
          description: 'Estudante de Ciência da Computação',
          imagePath: 'assets/luca_pinheiro.jpg',
        ),
      ),
    );
  }
}
