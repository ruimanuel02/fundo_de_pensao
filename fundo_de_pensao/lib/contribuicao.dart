import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Contribuicao extends StatelessWidget {
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
        title: Text('Contribuições', style: TextStyle(color: Colors.white)),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CONTRIBUIÇÕES',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No Período'),
                Text(
                  '6 354 436,23 AOA',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(thickness: 4, color: Color(0xFF001F8B)),
            SizedBox(height: 16),

            // Primeiro cartão
            _buildContribuicaoCard(
              percent: 0.2,
              titulo: 'Prod .94389.do',
              participante: 'Participante 20%',
              valor: '4 632 546,23 AOA',
            ),

            SizedBox(height: 12),

            // Segundo cartão
            _buildContribuicaoCard(
              percent: 0.8,
              titulo: 'Prod .94389.do',
              participante: 'Participante 80%',
              valor: '14 632 546,23 AOA',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContribuicaoCard({
    required double percent,
    required String titulo,
    required String participante,
    required String valor,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 8.0,
              percent: percent,
              center: Text('${(percent * 100).toInt()}%'),
              progressColor: Color(0xFF001F8B),
              backgroundColor: Colors.grey.shade300,
              circularStrokeCap: CircularStrokeCap.round,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(participante),
                  SizedBox(height: 4),
                  Text(valor, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
