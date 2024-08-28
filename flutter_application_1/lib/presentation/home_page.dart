import 'package:flutter/material.dart';
import 'home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController _controller = HomePageController();

  Widget buildTextField(String label, TextEditingController controller) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 140, 255), fontSize: 20.0, fontWeight: FontWeight.bold),
        border: const OutlineInputBorder(),
      ),
      style: const TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold, ),
      keyboardType: TextInputType.number,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Calculadora de IMC",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
        centerTitle: true,
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _controller.resetFields();
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Container(
              height: 300,
              child: Image.network('https://cdn-icons-png.flaticon.com/512/1373/1373255.png')
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                _controller.infotext,
                style: const TextStyle(color: Colors.red, fontSize: 25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
           Container(height: 8,), 
                      
            buildTextField("Peso (kg)", _controller.weightController),
            const Divider(height: 32,),
            buildTextField("Altura (cm)", _controller.heightController),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 48.0,
                child: ElevatedButton(
                  child: const Text(
                    "Verifique aqui",
                    style: TextStyle(
                      color: Colors.black,
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold,
                       ),
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.calculate();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
