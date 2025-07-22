import 'package:flutter/material.dart';

class SuporteTecnico extends StatefulWidget {
  const SuporteTecnico({super.key});

  @override
  _SuporteTecnicoState createState() => _SuporteTecnicoState();
}

class _SuporteTecnicoState extends State<SuporteTecnico> {
  final _formKey = GlobalKey<FormState>();
  String? _tipoProblema;

  final List<String> _tiposProblema = [
    'Erro no aplicativo',
    'Problema de login',
    'Bug visual',
    'Outro',
  ];
  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      hintText: label,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      filled: true,
      fillColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          "Suporte Técnico",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(decoration: _inputDecoration("Nome completo:")),
              const SizedBox(height: 4),
              TextFormField(
                decoration: _inputDecoration("Email:"),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 4),
              TextFormField(
                decoration: _inputDecoration("Contato:"),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 4),
              TextFormField(
                decoration: _inputDecoration("Modelo do aparelho:"),
              ),
              const SizedBox(height: 4),

              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Tipo de problema',
                  labelStyle: const TextStyle(
                    color:  Color.fromARGB(255, 1, 39, 70), // Cor azul
                    fontSize: 18, // Aumenta o tamanho
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                value: _tipoProblema,
                items: _tiposProblema
                    .map(
                      (tipo) =>
                          DropdownMenuItem(value: tipo, child: Text(tipo)),
                    )
                    .toList(),
                onChanged: (valor) => setState(() => _tipoProblema = valor),
              ),

              const SizedBox(height: 4),
              TextFormField(
                decoration: _inputDecoration("Data:00/00/0000"),
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Align(
                   alignment:Alignment.centerRight  , 
                  child: Text(
                    'Hora aproximada:',
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 39, 70),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ' 00/00min',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              TextFormField(
                decoration: _inputDecoration("Descrição:"),
                maxLines: 3,
              ),
              const SizedBox(height: 0),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white,
                    minimumSize: const Size(120, 36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Anexar imagem"),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Enviar", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
