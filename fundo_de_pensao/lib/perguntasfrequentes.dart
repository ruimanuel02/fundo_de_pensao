import 'package:flutter/material.dart';

class PerguntasFrequentes extends StatelessWidget {
  const PerguntasFrequentes({super.key});

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
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Listas de perguntas frequentes\ncom respostas rapidas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color:  Color.fromARGB(221, 1, 28, 116),
              ),
            ),
            const SizedBox(height: 24),
            _buildFaqButton('Como mudar o meu plano?'),
            const SizedBox(height: 12),
            _buildFaqButton('Como fazer uma  contribuição extra'),
            const SizedBox(height: 12),
            _buildFaqButton('Como consultar o extrato'),
            const SizedBox(height: 12),
            _buildFaqButton('Esqueci a minha senha, o que faço'),
          ],
        ),
      ),
    );
  }

  Widget _buildFaqButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 2,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      onPressed: () {
        // Ação ao clicar no botão
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '• $text',
          style: const TextStyle(
            color: Color.fromARGB(221, 1, 28, 116),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
