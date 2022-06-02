import 'package:flutter/material.dart';

import 'list_data.dart';


class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({ Key? key, required this.listSlidePosition }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'com os melhores cursos disponíveis', 
          image: const AssetImage("images/jaspion.jpg"), 
          margin: listSlidePosition.value * 5, 
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'com os melhores cursos disponíveis', 
          image: const AssetImage("images/jaspion.jpg"), 
          margin: listSlidePosition.value * 4, 
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'com os melhores cursos disponíveis', 
          image: const AssetImage("images/jaspion.jpg"), 
          margin: listSlidePosition.value * 3, 
        ),
        ListData(
          title: 'Estudar Laravel',
          subtitle: 'se virando procurando no google', 
          image: const AssetImage("images/jaspion.jpg"), 
          margin: listSlidePosition.value * 2, 
        ),
        ListData(
          title: 'Estudar Laravel',
          subtitle: 'se virando procurando no google', 
          image: const AssetImage("images/jaspion.jpg"), 
          margin: listSlidePosition.value * 1, 
        ),
        ListData(
          title: 'Estudar Laravel',
          subtitle: 'se virando procurando no google', 
          image: const AssetImage("images/jaspion.jpg"), 
          margin: listSlidePosition.value * 0, 
        ),
      ],
    );
  }
}