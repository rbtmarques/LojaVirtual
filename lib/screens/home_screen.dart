import 'package:flutter/material.dart';
import 'package:loja_virtual/tabs/home_tab.dart';
import 'package:loja_virtual/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),//impede o scroll deslisando com o dedo
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Text(
              "TELA 1"
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Text(
                "TELA 2",
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
                "TELA 3"
            ),
          ),
        ),
      ],
    );
  }
}
