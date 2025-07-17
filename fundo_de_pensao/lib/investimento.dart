import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Investimento extends StatelessWidget {
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
        title: Text('Investimento', style: TextStyle(color: Colors.white)),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline),
                label: Text('Novo Investimento'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF001F8B),
                  side: BorderSide(color: Color.fromARGB(255, 212, 213, 218)),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      196,
                      194,
                      194,
                    ), 
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3), 
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saldo actual', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5 567 357,18',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'AOA',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),
            Text(
              'Fundos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Table(
              border: TableBorder.all(color: Colors.grey.shade300),
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Renda fixa Previdencia'),
                    ),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('+%6')),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('150.000kz'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ações Sustentáveis'),
                    ),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('+%8')),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('150.000kz'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Multimercado'),
                    ),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('+%6')),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('150.000kz'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.only(top: 24), 
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: SizedBox(
                height: 200,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 400,
                    barGroups: [
                      makeGroupData(0, 300),
                      makeGroupData(1, 400),
                      makeGroupData(2, 200),
                      makeGroupData(3, 350),
                      makeGroupData(4, 250),
                    ],
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) => Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text('${(value * 6 + 18).toInt()}'),
                          ),
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          getTitlesWidget: (value, meta) => Text(
                            '${value.toInt()}',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: false),
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
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/perfil');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/contribuicoes');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/notificacoes');
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

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: 30,
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}
