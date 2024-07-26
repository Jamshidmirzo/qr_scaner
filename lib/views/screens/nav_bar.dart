import 'dart:io';

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {


  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: Platform.isAndroid ? 16 : 0,
      ),
      child: BottomAppBar(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            color: Colors.green,
            child: Row(
              children: [
                navItem(
                  Icons.home_outlined,
                  
                ),
                navItem(
                  Icons.message_outlined,
                  
                ),
                const SizedBox(width: 80),
                navItem(
                  Icons.notifications_none_outlined,
                
                ),
                navItem(
                  Icons.person_outline,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon) {
    return Expanded(
      child: InkWell(
        child: Icon(
          icon,
          color: true ? Colors.white : Colors.white.withOpacity(0.4),
        ),
      ),
    );
  }
}
