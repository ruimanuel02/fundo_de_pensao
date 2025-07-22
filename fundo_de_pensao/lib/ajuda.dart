import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001F8B),
        title: const Text('Ajuda', style: TextStyle(color: Colors.white)),
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
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 14),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Poio ao Cliente',
                  style: TextStyle(fontSize: 16, color: Colors.lightBlue),
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Botões
            ...[
              {'label': 'Perguntas Frequentes', 'route': '/perguntasfrequentes'},
              {'label': 'Fale Conosco', 'route': '/faleconosco'},
              {'label': 'Suporte Técnico', 'route': '/suportetecnico'},
              {'label': 'Horários e Políticas', 'route': '/politicashorarios'},
            ].map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, item['route']!);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 252, 251, 251),
                      foregroundColor:  Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      elevation: 1.0,
                    ),
                    child: Text(
                      item['label']!,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF001F8B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/perfil');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/contribuicoes');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/notificacao');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'início'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.savings), label: 'contribuições'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notificações'),
        ],
      ),
    );
  }
}
