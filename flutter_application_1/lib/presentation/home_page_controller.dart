import 'package:flutter/material.dart';



class HomePageController {
  String infotext = "Informe seus dados abaixo";
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  void resetFields() {
    
      weightController.text = "";
      heightController.text = "";
      infotext = "Informe seus dados";
  }

  void calculate() {

    //se caso as caixas de textos estiverem vazias irá retornar isso
    if(weightController.text.isEmpty || heightController.text.isEmpty){
      infotext = "Por favor, preencha  os campos abaixo!!";
      return;
    }
    
    
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);

      

      if (imc < 18.5) {
        infotext =
            "Você está muito abaixo do seu peso ideal (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 18.5 && imc <= 24.9) {
        infotext =
            "Você está abaixo do seu peso ideal (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 25 && imc <= 29.9) {
        infotext =
            "Você está com seu peso ideal / normal (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 30 && imc <= 34.9) {
        infotext =
            "Você está acima do seu peso (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 35 && imc <= 39.9) {
        infotext = "Você está Obeso (${imc.toStringAsPrecision(4)})";
      } else if (imc >= 40) {
        infotext =
            "Seu nível de obesidade está em estado crítico (${imc.toStringAsPrecision(4)})";
      }
  }


}