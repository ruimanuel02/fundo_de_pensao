import 'package:flutter/material.dart';

class Movimentos extends StatefulWidget {
  @override
  State<Movimentos> createState() => _MovimentosState();
}

class _MovimentosState extends State<Movimentos> {
  final List<Map<String, String>> dados = List.generate(
    10,
    (index) => {
      "movimento": "Transferência",
      "data": "12/02/25",
      "valor": "22 534 AOA",
    },
  );

  final TextEditingController _controller = TextEditingController();
  bool _mostrarIcone = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _mostrarIcone = _controller.text.isEmpty;
      });
    });
  }

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Pesquisar",
                      prefixIcon: _mostrarIcone ? Icon(Icons.search) : null,
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.symmetric(vertical: 4),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação de pesquisa
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF001F8B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Pesquisar"),
                  ),
                ),
              ],
            ),
          ),

          // Cabeçalho da tabela
          Container(
            color: Color(0xFF001F8B),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Movimentos", style: TextStyle(color: Colors.white)),
                Text("Data", style: TextStyle(color: Colors.white)),
                Text("Valor", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),

          // Lista de dados
          Expanded(
            child: ListView.builder(
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            dados[index]["movimento"]!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 22, 4, 122),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            dados[index]["data"]!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 22, 4, 122),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            dados[index]["valor"]!,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 22, 4, 122),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Valor up:", style: TextStyle(color: Colors.lightBlue)),
                Text("23 532,53", style: TextStyle(color: Colors.lightBlue)),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFF001F8B),
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Valor final:", style: TextStyle(color: Colors.white)),
                Text("23 324 421,4", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
