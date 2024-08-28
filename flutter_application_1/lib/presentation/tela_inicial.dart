import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                 padding: const EdgeInsets.all(1.0),
                 child:  Center(
                  
                  child: Image.network("https://img.freepik.com/vetores-premium/bem-vindo-linda-inscricao-texto-para-decorar-o-convite-banner-e-muito-mais-bem-vindo-inscricao-azul-em-estilo-moderno_110464-247.jpg"),

                ),
                ),
               
                
                 AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  title: Text(
                  "Seja bem-vindo ao seu app aliado na saúde!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight:   FontWeight.bold,
                  ),
                ),
                ),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.self_improvement,
                      color: Colors.black,
                      size: 35.0,
                    ),
                    Text(
                       "Mantenha seu corpo saudável",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ]
                ),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.feedback,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Monitoramento do seu Peso",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.calculate,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      "Calcula seu Índice de massa corporal",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // ir para a tela de calculo de Imc
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(horizontal: 105.0, vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
