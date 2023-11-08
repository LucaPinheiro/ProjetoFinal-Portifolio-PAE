import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  CustomCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/luca_pinheiro.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Text(
            'Instituto Mauá de Tecnologia',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            'Segundo Semestre',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: SvgPicture.asset('assets/linkedin_icon.svg'),
                onPressed: () {
                  _launchURL(
                      'https://www.linkedin.com/in/luca-pinheiro-gomes-516661213/');
                },
              ),
              IconButton(
                icon: SvgPicture.asset('assets/github_icon.svg'),
                onPressed: () {
                  _launchURL('https://github.com/LucaPinheiro');
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              _launchURL('https://twitter-home-page-react.vercel.app/');
            },
            child: Text('Meu Projeto 1'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              _launchURL('https://clinica-de-nutricao.vercel.app/');
            },
            child: Text('Meu Projeto 2'),
          ),
        ],
      ),
    );
  }
}
