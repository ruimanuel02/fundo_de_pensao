import 'package:flutter/material.dart';
import 'package:fundo_de_pensao/confrima_passe.dart';

class Cadastro extends StatefulWidget {
  final String? email;
  Cadastro({this.email});

  @override
  CadastroState createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: widget.email ?? '');
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  final _nomeController = TextEditingController();
  final _dataController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();
  String? _documentoSelecionado;
  String? _tipoPlanoSelecionado;

  final List<String> _tiposDocumento = [
    'Bilhete de Identidade',
    'Passaporte',
    'Cartão de Residente',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 72, 154),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Fundo de pensões', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome', style: TextStyle(color: Colors.lightBlue)),
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Nome Completo',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            Text('Documento', style: TextStyle(color: Colors.lightBlue)),
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: DropdownButtonFormField<String>(
                value: _documentoSelecionado,
                hint: Text('Seleciona o tipo de documento'),
                items: _tiposDocumento
                    .map(
                      (doc) => DropdownMenuItem(value: doc, child: Text(doc)),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _documentoSelecionado = value;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            Text(
              'Data de nascimento',
              style: TextStyle(color: Colors.lightBlue),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: TextField(
                controller: _dataController,
                decoration: InputDecoration(
                  labelText: 'Data de Nascimento',
                  hintText: '00/00/0000',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.datetime,
              ),
            ),
            SizedBox(height: 16),

            Text('Conctato', style: TextStyle(color: Colors.lightBlue)),
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: TextField(
                controller: _telefoneController,
                decoration: InputDecoration(
                  labelText: 'Contacto',
                  hintText: '+244',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 16),

            Text('Email', style: TextStyle(color: Colors.lightBlue)),
            SizedBox(height: 8),
            SizedBox(
              height: 40,

              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email de recuperação',
                  hintText: 'email@fundopensões.com',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 16),

            Text('Tipo de plano', style: TextStyle(color: Colors.lightBlue)),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('PGBL'),
                    value: 'PGBL',
                    groupValue: _tipoPlanoSelecionado,
                    onChanged: (value) {
                      setState(() {
                        _tipoPlanoSelecionado = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('VGBL'),
                    value: 'VGBL',
                    groupValue: _tipoPlanoSelecionado,
                    onChanged: (value) {
                      setState(() {
                        _tipoPlanoSelecionado = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Text(
              'Adicionar imagem do documento',
              style: TextStyle(color: Colors.lightBlue),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Adicionar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ConfrimaPasse()),
                  );
                },
                child: Text('Continuar'),
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
    );
  }
}
