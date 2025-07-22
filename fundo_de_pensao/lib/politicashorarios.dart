import 'package:flutter/material.dart';

class HorariosPoliticas extends StatelessWidget {
  const HorariosPoliticas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Horário e políticas',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Horários e Políticas de\nAtendimentos ao Cliente',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(221, 0, 0, 106),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            const Text(
              'Horário de Atendimento',
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Divider(),
            
            Table(
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1.5),
              },
              border: const TableBorder(
                horizontalInside: BorderSide(width: 0.5, color: Colors.grey),
                bottom: BorderSide(width: 0.5, color: Colors.grey),
              
              ),
              children: const [
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Dia da Semana',
                        style: TextStyle(fontWeight: FontWeight.bold,
                        color:Color.fromARGB(255, 129, 131, 133)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Horário',
                        style: TextStyle(fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 129, 131, 133)),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Segunda a Sexta',style:TextStyle(color:Color.fromARGB(255, 129, 131, 133) )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('08h00 às 16h00',style:TextStyle(color:Color.fromARGB(255, 129, 131, 133) )),
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Sábado',style:TextStyle(color:Color.fromARGB(255, 129, 131, 133) )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('08h00 às 16h00',style:TextStyle(color:Color.fromARGB(255, 129, 131, 133) )),
                    ),
                    
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5),
                       top: BorderSide(color: Colors.grey, width: 0.5),
  
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Domingo e Feriados',style:TextStyle(color:Color.fromARGB(255, 129, 131, 133) )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Sem atendimento',style:TextStyle(color:Color.fromARGB(255, 129, 131, 133) )),
                    ),
                    
                   
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Termos e Políticas',
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Align(
               alignment: Alignment.center,
              child: Text (
                '* Chamados técnicos: resposta em até 24h úteis, dúvidas gerais até 12h.\n\n'
                '* Todos os atendimentos são registrados e auditados para garantir qualidade.\n\n'
                '* O usuário deve manter os dados atualizados para facilitar o contato.\n\n'
                '* Reclamações formais seguem a norma da entidade reguladora do setor financeiro.',
                style: TextStyle(fontSize: 14, color:Color.fromARGB(255, 129, 131, 133)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
