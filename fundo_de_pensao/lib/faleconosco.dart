import 'package:flutter/material.dart';

class FaleConosco extends StatelessWidget {
  const FaleConosco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fale conosco',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Email:',
                border: OutlineInputBorder(),
              ),
            ),
            
            TextField(
              decoration: const InputDecoration(
                hintText: 'Contacto:',
                border: OutlineInputBorder(),
              ),
            ),
           
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Para: fundopensaoensa@gmail.com',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
              ),
            ),
            
            TextField(
  maxLines: 4,
  decoration: const InputDecoration(
    hintText: 'Assunto:',
    alignLabelWithHint: true,
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0), 
  ),
),

            const SizedBox(height: 300),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                ),
                onPressed: () {},
                child: const Text(
                  'Enviar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
