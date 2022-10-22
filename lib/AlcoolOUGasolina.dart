import 'package:flutter/material.dart';

class AlcoolOUGasolina extends StatefulWidget {
  const AlcoolOUGasolina({Key? key}) : super(key: key);

  @override
  State<AlcoolOUGasolina> createState() => _AlcoolOUGasolinaState();
}

class _AlcoolOUGasolinaState extends State<AlcoolOUGasolina> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[


              //imagem
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 32),
                child: Image.asset(
                  "images/logo.png",
                  alignment: Alignment.center,
                  width: 350,
                ),
              ),


              //texto
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),


              //alcool
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço do Álcool (ex: 1.59):",
                ),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                  color: Colors.blue,
                ),
                controller: _controllerAlcool,
              ),


              //gasolina
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço da Gasolina (ex: 3.15):",
                ),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                  color: Colors.blue,
                ),
                controller: _controllerGasolina,
              ),


              //botão
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                ),
              ),


              //resultado
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Resultado",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
