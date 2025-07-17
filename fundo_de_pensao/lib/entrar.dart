import 'package:flutter/material.dart';
import 'package:fundo_de_pensao/homepage.dart';

class Entrar extends StatefulWidget {
  @override
  State<Entrar> createState() => _EntrarPageState();
}

class _EntrarPageState extends State<Entrar> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  bool _mostrarSenha = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 72, 154),
        centerTitle: true,
        toolbarHeight: 40,
        title: Text('Voltar', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // 📷 Imagem fora do padding
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/E3.jpg'), // Substitua pelo nome certo
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔽 Conteúdo com padding
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                children: [
                  Text(
                    '"Invista em você. Sua versão futura\nagradecerá. Pequenos hábitos hoje,\ngrandes resultados na sua pensão\nde amanhã."',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.5, color: Colors.blue[900]),
                  ),
                  SizedBox(height: 24),

                  // Campo email
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'email@fundopensões.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16),

                  // Campo senha com ícone de olho
                  TextField(
                    controller: senhaController,
                    obscureText: !_mostrarSenha,
                    decoration: InputDecoration(
                      hintText: 'Palavra passe',
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
                  SizedBox(height: 60),

                  // Botão Entrar
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => HomePage()),
                        );
                      },
                      child: Text('Entrar'),
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
