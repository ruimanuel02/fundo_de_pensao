import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  final Map<String, String> dados = {
    'Nome': 'João Manuel',
    'Data de nascimento': '15/03/1985',
    'Nº do documento': '123456789LA045',
    'Telefone': '+244 923 456 789',
    'E-mail': 'joao.ensa@email.com',
    'Endereço': 'Rua do Progresso, Luanda',
    'Tipo de plano': 'PGBL',
    'Profissão': 'Engenheiro Civil',
    'Regime tributário': 'Progressivo',
  };
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
        centerTitle: true,
        title: Text('Perfil', style: TextStyle(color: Colors.white)),
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
      drawer: Drawer(
        backgroundColor: Color(0xFF001F8B),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF001F8B)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'João Manuel',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Plano VBPL',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),

            Divider(color: Colors.white54),
          ],
        ),
      ),
      //Foto de perfil
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: Color(0xFF001F8B),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Botao editar
          Align(
            alignment: Alignment.topRight,
            child: TextButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    TextEditingController _senhaController =
                        TextEditingController();

                    return AlertDialog(
                      title: Text('Confirme sua identidade'),
                      content: TextField(
                        controller: _senhaController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Digite sua senha',
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(context), // Fecha o dialog
                          child: Text('Cancelar'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            String senha = _senhaController.text;

                            if (senha == 'ruimanuel') {
                              Navigator.pop(context); // Fecha o dialog
                              Navigator.pushNamed(
                                context,
                                '/editarPerfil',
                              ); // Navega
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Senha incorreta')),
                              );
                            }
                          },
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                );
              },

              icon: Icon(Icons.edit, size: 16),
              label: Text('Editar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF001F8B),
                side: BorderSide(color: Color.fromARGB(255, 212, 213, 218)),
              ),
            ),
          ),
          SizedBox(height: 16),
          ...dados.entries.map(
            (entry) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.key,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    entry.value,
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ),
                Divider(
                  color: const Color.fromARGB(255, 52, 226, 245),
                  thickness: 1,
                ),
                SizedBox(height: 6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
