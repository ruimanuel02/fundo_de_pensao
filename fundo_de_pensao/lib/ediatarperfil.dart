import 'package:flutter/material.dart';

class EditarPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001F8B),
        centerTitle: true,
        title: Text('Dados pessoais', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: Container(
          color: Color(0xFF001F8B),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue[800]),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.attach_money, color: Colors.white),
                title: Text(
                  'Investimentos',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pushNamed(context, '/investimentos'),
              ),
              ListTile(
                leading: Icon(Icons.receipt_long, color: Colors.white),
                title: Text(
                  'Movimentos',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pushNamed(context, '/movimentos'),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ),
                title: Text(
                  'Recebimentos',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pushNamed(context, '/recebimentos'),
              ),
              ListTile(
                leading: Icon(Icons.payment, color: Colors.white),
                title: Text(
                  'Pagamentos',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pushNamed(context, '/pagamentos'),
              ),
              Divider(color: Colors.white),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.white),
                title: Text('Sair', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              color: Colors.lightBlueAccent,
              child: Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add, size: 16, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.save, size: 16),
                label: Text('Guarda'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF001F8B),
                  side: BorderSide(color: Color.fromARGB(255, 212, 213, 218)),
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildTextField(label: 'Nome:'),
            _buildTextField(label: 'Data de nascimento:'),
            _buildTextField(label: 'Nº do documento:'),
            _buildTextField(label: 'Telefone:'),
            _buildTextField(label: 'E-mail:'),
            _buildTextField(label: 'Endereço:'),
            _buildTextField(label: 'Tipo de plano:'),
            _buildTextField(label: 'Profissão:'),
            _buildTextField(label: 'Regime tributário:'),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.lightBlue),
          border: OutlineInputBorder(),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
      ),
    );
  }
}
