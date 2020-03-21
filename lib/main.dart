import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(osiris_app());

/// This Widget is the main application widget.
class osiris_app extends StatelessWidget {
  static const String _title = 'Osiris App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      title: _title,

      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),),
        body: Center(
          child :  MyStatefulWidget()
        ),
      ),
    );
  }
}

  class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
      _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
  }
int _left=0, _right =0, _up=0, _down=0;
  class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                titleSection,
                IconButton(
                  icon: Icon(Icons.arrow_upward,size: 25.0,color: Colors.deepOrange,),
                  tooltip: 'Increase up by 1',
                  onPressed: () {
                  setState(() {
                  _up += 1;
                });
              },
            ),

                IconButton(
                  icon: Icon(Icons.arrow_back,size: 25.0,color: Colors.deepOrange,),
                  tooltip: 'Increase left by 1',
                  onPressed: () {
                    setState(() {
                      _left += 1;
                    });
                  },
                ),

              IconButton(
                icon: Icon(Icons.arrow_forward,size: 25.0,color: Colors.deepOrange,),
                tooltip: 'Increase right by 1',
                onPressed: () {
                  setState(() {
                    _right += 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_downward,size: 25.0,color: Colors.deepOrange,),
                tooltip: 'Increase down by 1',
                onPressed: () {
                  setState(() {
                    _down += 1;
                  });
                },
              ),
              Text('Up : $_up Left : $_left Right : $_right  Down $_down')
        ],
      );
    }
  }

  Widget titleSection = Center(
 //padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Osiris App',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Arquitectura',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.cloud_upload,
          color: Colors.red[500],
        ),
      ],
    ),
  );



