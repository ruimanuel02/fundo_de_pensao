import 'package:flutter/material.dart';
import 'package:fundo_de_pensao/Perfil.dart';
import 'package:fundo_de_pensao/ajuda.dart';
import 'package:fundo_de_pensao/contribuicao.dart';
import 'package:fundo_de_pensao/ediatarperfil.dart';
import 'package:fundo_de_pensao/investimento.dart';
import 'package:fundo_de_pensao/movimentos.dart';
import 'login.dart';
import 'homepage.dart';
import 'notificacao.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ajuda',
      routes: {
        '/login': (context) => Login(),
        '/': (context) => HomePage(),
        '/notificacao': (context) => Notificacao(),
        '/perfil': (context) => Perfil(),
        '/investimento': (context) => Investimento(),
        '/editarPerfil': (context) => EditarPerfil(),
        '/contribuicao': (context) => Contribuicao(),
        '/movimentos': (context) => Movimentos(),
        '/ajuda': (context) => Ajuda(),
        // outras rotas futuras...
      },
    ),
  );
}
