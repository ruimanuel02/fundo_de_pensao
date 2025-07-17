import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});

  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF001F8B),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.attach_money, color: Colors.white),
            title: const Text(
              'Investimentos',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/investimento');
            },
          ),
          ListTile(
            leading: const Icon(Icons.receipt_long, color: Colors.white),
            title: const Text(
              'Movimentos',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/movimentos');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_balance_wallet,
              color: Colors.white,
            ),
            title: const Text(
              'Recebimentos',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/recebimentos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment, color: Colors.white),
            title: const Text(
              'Pagamentos',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/pagamentos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white),
            title: const Text('Sair', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }

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
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => _openMenu(context),
          ),
        ],
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
              {'label': 'Perguntas Frequentes', 'route': '/faq'},
              {'label': 'Fale Conosco', 'route': '/fale'},
              {'label': 'Suporte Técnico', 'route': '/suporte'},
              {'label': 'Horários e Políticas', 'route': '/politicas'},
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
                      backgroundColor: const Color.fromARGB(255, 252, 251, 251),
                      foregroundColor: const Color.fromARGB(221, 1, 43, 184),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF001F8B),
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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'início'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.savings),
            label: 'contribuições',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
        ],
      ),
    );
  }
}
