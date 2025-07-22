import 'package:flutter/material.dart';

class Pagamentos extends StatelessWidget {
  const Pagamentos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movimentos = [
      {
        'data': '12/01/25',
        'recibo': 'R632764',
        'descricao': 'Pensão',
        'valor': '200 000',
      },
      {
        'data': '12/01/25',
        'recibo': 'R632764',
        'descricao': 'Pensão',
        'valor': '200 000',
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
              title: Text(
                'Investimentos',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/investimento');
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
              title: Text(
                'Recebimentos',
                style: TextStyle(color: Colors.white),
              ),
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001F8B),
        title: Text('Pagamentos', style: TextStyle(color: Colors.white)),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Moeda: Kwanza AOA',
                style: TextStyle(
                  color: Colors.lightBlue.shade700,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),

          // Título "Movimentos" com barra azul abaixo
          Container(
            width: double.infinity,
            color: Colors.grey.shade300,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const Text(
              'Pagamentos',
              style: TextStyle(
                color: Color.fromARGB(221, 1, 28, 116),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 6,
            color: const Color(0xFF001F8B), // barra azul
          ),

          // Cabeçalho da tabela
          Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Recibo nº',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Descrição do movimento',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Valor',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // Lista de movimentos
          Expanded(
            child: ListView.separated(
              itemCount: movimentos.length,
              separatorBuilder: (context, index) =>
                  Divider(color: Colors.blue, height: 2),
              itemBuilder: (context, index) {
                final mov = movimentos[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Expanded(child: Text(mov['data']!)),
                      Expanded(child: Text(mov['recibo']!)),
                      Expanded(flex: 2, child: Text(mov['descricao']!)),
                      Expanded(child: Text(mov['valor']!)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
