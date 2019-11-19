import 'package:flutter/material.dart';
import 'package:location_service/datamodels/user_location.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("APP GPS"),
        
      ),
      body: Center(
        child:Column(
          children: <Widget>[
            SizedBox(height: 325.0,),
            Text('Locación: Latitud:${userLocation.latitude}, Longitud: ${userLocation.longitude}'),
            SizedBox(height: 15.0,),
            Text("Locación encontrada usando el sensor GPS"),
            
          ],
        ) 
        
        
      ),
    );
  }
}
