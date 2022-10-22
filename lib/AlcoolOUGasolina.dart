import 'package:flutter/material.dart';

class AlcoolOUGasolina extends StatefulWidget {
  const AlcoolOUGasolina({Key? key}) : super(key: key);

  @override
  State<AlcoolOUGasolina> createState() => _AlcoolOUGasolinaState();
}

class _AlcoolOUGasolinaState extends State<AlcoolOUGasolina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                children: <Widget>[

                  Image.asset(
                    "images/logo.png",
                    alignment: Alignment.center,
                    width: 350,
                  ),

                  Text(
                    "Saiba qual a melhor opção para abastecimento do seu carro",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),


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
                  ),


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
                  ),


                  ElevatedButton(
                    onPressed: (){},
                    child: Text("Calcular"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
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
