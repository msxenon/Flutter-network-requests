import 'package:flutter/material.dart';
import 'package:flutter_net_requests_handler/models/api_response.dart';
import 'package:flutter_net_requests_handler/models/post_model.dart';
import 'package:flutter_net_requests_handler/network_services/posts/posts_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Network Requests demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String loadingState = 'Idle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Loading Status:',
            ),
            Text(
              loadingState,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              PostsService().getPost().then(onResponse);
            },
            child: Icon(Icons.web),
          ),
          FloatingActionButton(
            onPressed: () {
              PostsService().getError().then(onResponse);
            },
            child: Icon(
              Icons.error,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }

  void onResponse(Result value) {
    print('resultType ${value.runtimeType}');
    if (value is ErrorState) {
      loadingState = 'Loading Error: ${value.errorMessage} ';
    } else if (value is SuccessState<PostModel>) {
      loadingState = 'Succeed: \n ${value.data.title}';
    }
    print(loadingState);
    if (mounted) setState(() {});
  }
}
