import 'package:flutter/material.dart';
import 'package:fundo_de_pensao/homepage.dart';

class ConfrimaPasse extends StatefulWidget {
  @override
  State<ConfrimaPasse> createState() => _ConfrimaPasseState();
}

class _ConfrimaPasseState extends State<ConfrimaPasse> {
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController =
      TextEditingController();

  bool _mostrarSenha = false;
  bool _mostrarConfirmarSenha = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 72, 154),
        toolbarHeight: 40,
        centerTitle: true,
        title: Text('Voltar', style: TextStyle(color: Colors.white)),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Column(
        children: [
          // 📷 Imagem de topo
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/E2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔽 Conteúdo principal
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '"Pense grande. Sonhe longe.\nGaranta sua liberdade\nfinanceira na reforma."',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                  ),
                  SizedBox(height: 24),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Palavra passe',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // 🔐 Campo: Palavra passe com olho
                  TextField(
                    controller: senhaController,
                    obscureText: !_mostrarSenha,
                    decoration: InputDecoration(
                      hintText: 'Digite a palavra passe',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _mostrarSenha
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _mostrarSenha = !_mostrarSenha;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 12),

                  // 🔐 Campo: Confirmar palavra passe com olho
                  TextField(
                    controller: confirmarSenhaController,
                    obscureText: !_mostrarConfirmarSenha,
                    decoration: InputDecoration(
                      hintText: 'Confirme a sua palavra passe',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _mostrarConfirmarSenha
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _mostrarConfirmarSenha = !_mostrarConfirmarSenha;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 12),

                  // 🔗 Esqueci a senha (centralizado)
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // ação de recuperação de senha
                      },
                      child: Text(
                        'esqueci a minha senha',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),

                  // 🔘 Botão Concluir
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => HomePage()),
                        );
                      },
                      child: Text('Concluir'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        textStyle: TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
