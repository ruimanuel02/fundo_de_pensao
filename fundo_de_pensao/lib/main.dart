import 'package:flutter/material.dart';
import 'package:fundo_de_pensao/Perfil.dart';
import 'package:fundo_de_pensao/ajuda.dart';
import 'package:fundo_de_pensao/contribuicao.dart';
import 'package:fundo_de_pensao/ediatarperfil.dart';
import 'package:fundo_de_pensao/faleconosco.dart';
import 'package:fundo_de_pensao/investimento.dart';
import 'package:fundo_de_pensao/movimentos.dart';
import 'package:fundo_de_pensao/pagamentos.dart';
import 'package:fundo_de_pensao/perguntasfrequentes.dart';
import 'package:fundo_de_pensao/politicashorarios.dart';
import 'package:fundo_de_pensao/recebimentos.dart';
import 'package:fundo_de_pensao/suportetecnico.dart';
import 'login.dart';
import 'homepage.dart';
import 'notificacao.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/': (context) => HomePage(),
        '/notificacao': (context) => Notificacao(),
        '/perfil': (context) => Perfil(),
        '/investimento': (context) => Investimento(),
        '/editarPerfil': (context) => EditarPerfil(),
        '/contribuicao': (context) => Contribuicao(),
        '/movimentos': (context) => Movimentos(),
        '/recebimentos': (context) => Recebimentos(),
        '/pagamentos': (context) => Pagamentos(),
        '/suportetecnico': (context) => SuporteTecnico(),
        '/ajuda': (context) => Ajuda(),
         '/perguntasfrequentes': (context) => PerguntasFrequentes(),
         '/politicashorarios': (context) => HorariosPoliticas(),
         '/faleconosco': (context) => FaleConosco(),
        
      },
    ),
  );
}
