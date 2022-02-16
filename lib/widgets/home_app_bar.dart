import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.only(top: 30, right: 10, left: 10),
      child: Row(
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/768px-Instagram_logo_2016.svg.png', height: 50)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}