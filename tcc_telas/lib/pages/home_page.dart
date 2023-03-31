import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_telas/pages/cardapio_page.dart';
import 'package:tcc_telas/pages/saldo_page.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA12E2F),
        leading: IconButton(
          icon: Image.asset('image/logo.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 80,
        title: Text(
          'SARsCamp',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),
        titleSpacing: 0,
        actions: [
          SizedBox(
            width: 50, // largura do espaço em pixels
            child: IconButton(
              icon: Icon(
                Icons.star,
                size: 40,
              ),
              onPressed: () {
                // função chamada quando o ícone de estrela é pressionado
              },
            ),
          ),
          SizedBox(
            width: 50, // largura do espaço em pixels
            child: IconButton(
              icon: Icon(
                Icons.info,
                size: 40,
              ),
              onPressed: () {
                // função chamada quando o ícone de informações é pressionado
              },
            ),
          ),
        ],
      ),
      body: Container(
          color: Color(0xFF0A6066),
          width: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      child: Opacity(
                        opacity: 0.12,
                        child: Image.asset('image/Unicamp.png'),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cardapioPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 140,
                              child: Image.asset('image/cardapio.png'),
                            ),
                            Text(
                              'Cardápio RU',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => saldoPage()));
                      },
                      child:Container(
                      margin: const EdgeInsets.all(10),
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            child: Image.asset('image/carteira.png'),
                          ),
                          Text(
                            'Saldo do RU',
                             style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ) ,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 130,
                            child: Image.asset('image/achados-e-perdidos.png'),
                          ),
                          Text(
                            'Achados & Perdidos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
