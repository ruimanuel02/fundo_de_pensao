import 'package:flutter/material.dart';

class Notificacao extends StatelessWidget {
  final List<Map<String, String>> notificacao = [
    {
      'data': '26 de Junho de 2025, 19:12',
      'mensagem':
          'Sua jornada para o futuro continua! 🚀\nSeu extrato de junho já está disponível. Acesse o app e acompanhe a evolução do seu fundo de pensões.',
    },
    {
      'data': '26 de Junho de 2025, 19:40',
      'mensagem':
          'Veja como suas contribuições e os rendimentos do fundo impulsionam seu saldo.',
    },
    {
      'data': '26 de Junho de 2025, 19:40',
      'mensagem':
          'Veja como suas contribuições e os rendimentos do fundo impulsionam seu saldo.',
    },
  ];

  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFF001F8B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.attach_money, color: Colors.white),
            title: Text('Investimentos', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/investimentos');
            },
          ),
          ListTile(
            leading: Icon(Icons.receipt_long, color: Colors.white),
            title: Text('Movimentos', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/movimentos');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.white),
            title: Text('Recebimentos', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/recebimentos');
            },
          ),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.white),
            title: Text('Pagamentos', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/pagamentos');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white),
            title: Text('Sair', style: TextStyle(color: Colors.white)),
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
        backgroundColor: Color(0xFF001F8B),
        title: Text('Notificações', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () => _openMenu(context),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: notificacao.length,
        itemBuilder: (context, index) {
          final item = notificacao[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['data']!,
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                ),
                SizedBox(height: 8),
                Text(
                  item['mensagem']!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.indigo[900],
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        },
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
