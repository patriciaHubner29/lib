import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerValor = TextEditingController();
  final TextEditingController _controllerPessoa = TextEditingController();
  final TextEditingController _controllerQuantidade = TextEditingController();
  final TextEditingController _controllerValorBebida = TextEditingController();
  bool teveBebida = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 126, 196, 190),
      body: Center(
        child: ListView(children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 186, 241, 239),
                            blurRadius: 3,
                            spreadRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Color.fromARGB(255, 105, 235, 228),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, top: 5, right: 10, bottom: 5),
                            child: Text(
                              "Qual o valor total da compra?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                          ],
                          controller: _controllerValor,
                          decoration: InputDecoration(
                              hintText: "Ex: 250.0 ",
                              labelText: "Valor",
                              icon: IconButton(
                                onPressed: () {
                                  print(_controllerValor.text);
                                },
                                icon: Icon(
                                  Icons.monetization_on,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 92, 211, 211))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 92, 211, 211)),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 186, 241, 239),
                            blurRadius: 3,
                            spreadRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Color.fromARGB(255, 105, 235, 228),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, top: 5, right: 10, bottom: 5),
                            child: Text(
                              "Qual a quantidade de pessoas?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                          ],
                          controller: _controllerPessoa,
                          decoration: InputDecoration(
                              hintText: "Ex: 1,2,3 ",
                              labelText: "Pessoas",
                              icon: IconButton(
                                onPressed: () {
                                  print(_controllerPessoa.text);
                                },
                                icon: Icon(
                                  Icons.emoji_people,
                                  size: 40,
                                  color: Colors.pink,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 92, 211, 211))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 92, 211, 211)),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 186, 241, 239),
                            blurRadius: 3,
                            spreadRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Color.fromARGB(255, 105, 235, 228),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, top: 5, right: 10, bottom: 5),
                        child: Text(
                          "Teve bebida?",
                          style: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Switch(
                          value: teveBebida,
                          onChanged: (value) {
                            setState(() {
                              teveBebida = value;
                              if (teveBebida) {
                                print("Teve Bebidas");
                              } else {
                                print("Não teve Bebidas");
                              }
                            });
                          })
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 186, 241, 239),
                            blurRadius: 3,
                            spreadRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Color.fromARGB(255, 105, 235, 228),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, top: 5, right: 10, bottom: 5),
                            child: Text(
                              "Quantas pessoas beberam?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                          ],
                          controller: _controllerQuantidade,
                          decoration: InputDecoration(
                              hintText: "Ex: 1,2,3 ",
                              labelText: "Quantidade",
                              icon: IconButton(
                                onPressed: () {
                                  print(_controllerQuantidade.text);
                                },
                                icon: Icon(
                                  Icons.local_drink_sharp,
                                  size: 40,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 92, 211, 211))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 92, 211, 211)),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 186, 241, 239),
                            blurRadius: 3,
                            spreadRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Color.fromARGB(255, 105, 235, 228),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, top: 5, right: 10, bottom: 5),
                            child: Text(
                              "Qual o valor das Bebidas?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                          ],
                          controller: _controllerValorBebida,
                          decoration: InputDecoration(
                              hintText: "Ex: 100.00 ",
                              labelText: "Valor",
                              icon: IconButton(
                                onPressed: () {
                                  print(_controllerValorBebida.text);
                                },
                                icon: Icon(
                                  Icons.money_outlined,
                                  size: 40,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 92, 211, 211))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 92, 211, 211)),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 186, 241, 239),
                            blurRadius: 3,
                            spreadRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Color.fromARGB(255, 105, 235, 228),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Valor pra quem bebeu: "),
                        Text("Valor pra quem não bebeu: ")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
