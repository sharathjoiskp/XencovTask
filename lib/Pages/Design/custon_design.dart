import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListlile extends StatelessWidget {
  CustomListlile({
    super.key,
    required this.title,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        trailing: Icon(
          Icons.chevron_right,
          size: 35,
          color: Colors.black26,
        ),
      ),
    );
  }
}

//''''''''''''''''''''''''''''''''''''''''''''''''''
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
     ..color = Colors.green.shade600
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7177143, 0);
    path0.quadraticBezierTo(
        size.width * 0.8728571, 0, size.width * 0.9245714, 0);
    path0.quadraticBezierTo(size.width * 0.9971429, size.height * -0.0054800,
        size.width, size.height * 0.0996000);
    path0.quadraticBezierTo(size.width * 0.9991429, size.height * 0.7261000,
        size.width * 0.9988571, size.height * 0.9008000);
    path0.quadraticBezierTo(size.width * 1.0035714, size.height * 0.9992000,
        size.width * 0.9308571, size.height);
    path0.lineTo(size.width * 0.0731429, size.height);
    path0.quadraticBezierTo(size.width * 0.0011429, size.height * 0.9994000, 0,
        size.height * 0.9032000);
    path0.quadraticBezierTo(size.width * 0.0002857, size.height * 0.8776000, 0,
        size.height * 0.8008000);
    path0.lineTo(size.width * 0.7171429, 0);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
     ..color = Colors.green.shade600
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path1 = Path();
    path1.moveTo(size.width * 0.6320000, 0);
    path1.lineTo(0, size.height * 0.6880000);
    path1.lineTo(0, size.height * 0.6000000);
    path1.lineTo(size.width * 0.5542857, 0);
    path1.lineTo(size.width * 0.6320000, 0);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//'''''''''''''''''''''''''''''''''''''''''''''''

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 35,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('image/profile.jpg'),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tommy Berns',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              Row(
                children: [
                  Text(
                    'Los Anglous',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black38),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
//''''''''''''''''''''''''''''''''''''''''''''''''''''''

class CustomIncExp extends StatelessWidget {
  CustomIncExp({
    super.key,
    required this.title,
    required this.amt,
  });
  String title;
  String amt;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            amt,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
