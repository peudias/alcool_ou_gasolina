import 'package:flutter/material.dart';

class AlcoolOUGasolina extends StatefulWidget {
  const AlcoolOUGasolina({Key? key}) : super(key: key);

  @override
  State<AlcoolOUGasolina> createState() => _AlcoolOUGasolinaState();
}

class _AlcoolOUGasolinaState extends State<AlcoolOUGasolina> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _TextoResultado = "";

  void _calcular(){
    double? precoAlcool = double.tryParse( _controllerAlcool.text);
    double? precoGasolina = double.tryParse( _controllerGasolina.text);

    if(precoAlcool == null || precoGasolina == null){
      setState(() {
        _TextoResultado = "Número inválido, digite números maiores que '0' e utilizando o ponto (.)";
      });
    }else{
      /*
      * Se o preço do álcool dividido pelo preço da gasolina for >= 0.7
      * é melhor abastecer com a gasolina
      * senão é melhor utilizar o álcool
      */

      if((precoAlcool/precoGasolina) >= 0.7){
        setState(() {
          _TextoResultado = "É melhor abastecer com a GASOLINA.";
        });
      }else{
        setState(() {
          _TextoResultado = "É melhor abastecer com o ÁLCOOL.";
        });
      }
    }

    //função para limpar os campos onde o usuário digita o valor
    //_limparCampos();

  }

  void _limparCampos(){
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

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
                  onPressed: _calcular,
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
                  _TextoResultado,
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
