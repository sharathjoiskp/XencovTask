import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import 'Design/custon_design.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          CustomProfileListTile(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Balance',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.black38),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '\$567,57',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundCheckBox(
                onTap: (selected) => print(selected),
                uncheckedWidget: Icon(
                  Icons.add,
                  size: 40,
                ),
                checkedWidget: Icon(Icons.add, size: 40, color: Colors.white),
                isChecked: false,
                size: 60,
              ),
              RoundCheckBox(
                onTap: (selected) {},
                uncheckedWidget: Icon(
                  Icons.search,
                  size: 40,
                ),
                checkedWidget: Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.white,
                ),
                isChecked: false,
                size: 60,
              ),
              RoundCheckBox(
                onTap: (selected) {},
                uncheckedWidget: Icon(
                  Icons.bar_chart,
                  size: 40,
                ),
                checkedWidget: Icon(
                  Icons.bar_chart,
                  size: 40,
                  color: Colors.white,
                ),
                isChecked: false,
                size: 60,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 220,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.green.shade400,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: CustomPaint(
                    size: Size(350.0, 220.0),
                    painter: RPSCustomPainter(),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 250,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CARD',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 32,
                  child: Text(
                    '3567 55437 9050 5600',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 27,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 32,
                  child: Text(
                    'Card number',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 165,
                  left: 32,
                  child: Text(
                    'Tommy Berns',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 195,
                  left: 32,
                  child: Text(
                    'Los Anglous',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 165,
                  left: 235,
                  child: Text(
                    '05/20',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 195,
                  left: 235,
                  child: Text(
                    'valid',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomListlile(
            title: 'My card',
          ),
          SizedBox(
            height: 10,
          ),
          CustomListlile(
            title: 'Transactions',
          ),
        ],
      ),
    );
  }
}
