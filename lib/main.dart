import 'package:flutter/material.dart';
import 'package:mapmyindia_gl/mapmyindia_gl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  initState() {
    super.initState();
MapmyIndiaAccountManager.setMapSDKKey('3de00ee7db6c0a1e7611c36cc3b9e795');
    
    
MapmyIndiaAccountManager.setRestAPIKey('3de00ee7db6c0a1e7611c36cc3b9e795'); 
MapmyIndiaAccountManager.setAtlasClientId('33OkryzDZsIaSd7PcynGzR6G4aiz4y9-UZhig-RN0DmMjCztcHNb10NUskOS9fB1XOxjgAlvzgK8_WE3RN0rgvbpFA-NwGxm'); 
MapmyIndiaAccountManager.setAtlasClientSecret('lrFxI-iSEg8MYLYh-480bJWdgqwJKmamk4_Df3eZzMaKGUGecu7qegthAp-lgbW47S3T-5eXn2E0IeNBFWAjvxiEcXxlWgFL8QYTgn5yyfU=');
    }
    
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
    
   

  }
    late MapmyIndiaMapController mapController ;
static final CameraPosition _kInitialPosition = const CameraPosition(
    target: LatLng(25.321684, 82.987289),
    zoom: 14.0,
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Container(
                 width: 300,
                 height: 300,
                 child: MapmyIndiaMap(  
  initialCameraPosition: _kInitialPosition,  
  myLocationEnabled: true,  
  myLocationTrackingMode: MyLocationTrackingMode.NONE_COMPASS,  
  onUserLocationUpdated: (location) => {  
      print("Position: ${location.position.toString()}, Speed: ${location.speed}, Altitude: ${location.altitude}")  
  },  
)
               ),
      Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
  
}
