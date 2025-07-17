import 'package:flutter/material.dart';

class Perguntasfrequentes extends StatelessWidget {
  const Perguntasfrequentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001F8B),
        title: const Text(
          'Perguntas Frequentes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            const Text(
              'Listas de perguntas frequentes com respostas rapidas',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF001F8B),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),

            // Botões de Ajuda
            ...[
              {'label': 'Como mudar o meu plano', 'route': '/faq'},
              {'label': 'Como fazer uma contribuição extra', 'route': '/fale'},
              {'label': 'Como consultar o extrato', 'route': '/suporte'},
              {
                'label': 'Esqueci a minha senha o que faço ',
                'route': '/politicas',
              },
            ].map(
              (label) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print('$label clicado!');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      elevation: 1.0,
                    ),
                    child: Text(
                      label['label']!,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
