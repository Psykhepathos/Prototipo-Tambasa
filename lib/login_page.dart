import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // A ideia é fazer um login no banco de dados com o produtivo do usuario mas para testes vamos deixar tudo constante.
  String produtivo = '15857';
  String senha = 'tambasa';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // A colocar a logo da tambasa
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/tambasa.png'),
                ),
                // Fields de texto
                TextField(
                  onChanged: (text) {
                    produtivo = text;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Produtivo', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  // Tudo decoração para ficar mais agradavel
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 17),
                ElevatedButton(
                  // Este é o botão de pular de tela, usei tela nomeavel pois terão varias outras telas.
                  onPressed: () {
                    if (produtivo == '15857' && senha == 'tambasa') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      // ignore: avoid_print
                      print('erou');
                    }
                  },
                  child: const Text('Entrar'),
                )
              ],
            ),
          )),
    ));
  }
}
