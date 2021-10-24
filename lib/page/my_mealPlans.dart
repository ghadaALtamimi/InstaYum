import 'package:flutter/material.dart';

class my_meal_plans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Sunday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Monday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Tuseday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Wednesday'),
                      // ignore: deprecated_member_use
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Thursday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Friday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Stturday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Sunday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Monday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Tuseday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Wednesday'),
                      // ignore: deprecated_member_use
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Thursday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Friday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Stturday'),
                      MaterialButton(
                        height: 60.0,
                        minWidth: 100.0,
                        color: Colors.grey.shade200,
                        onPressed: () => {},
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
