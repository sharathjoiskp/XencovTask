import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'Design/custon_design.dart';
import 'dash_board.dart';

class IncExpPage extends StatefulWidget {
  const IncExpPage({super.key});

  @override
  State<IncExpPage> createState() => _IncExpPageState();
}

class _IncExpPageState extends State<IncExpPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProfileListTile(),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 70,
                  child: Container(
                    height: 250,
                    width: 250,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      value: .75,
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 95,
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            'Balance',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '\$567,57',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w600),
                          )
                        ],
                      )),
                ),
                Positioned(
                  top: 60,
                  left: 95,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      value: .5,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 270,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Icon(
                        Icons.bar_chart_rounded,
                        size: 50,
                        color: Colors.blue,
                      )),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIncExp(
                title: 'INCOME',
                amt: '309',
              ),
              CustomIncExp(
                title: 'EXPENSE',
                amt: '234',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
