import 'package:flutter/material.dart';
import 'package:projet_annuel/pages/page_parameters.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
class ThirdScreen extends StatelessWidget {

  void schoolPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (BuildContext context) {
      return new PageParameters("Paramètres");
    }));
  }

  @override
  Widget build(BuildContext context) {
    return new FlutterMap(
      options: new MapOptions(
        center: new LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/"
              "tilequery/-122.42901,37.80633.json?radius=10&{accessToken}",
          additionalOptions: {
            'accessToken': 'pk.eyJ1Ijoic2gwciIsImEiOiJjazM1cHAxODYwMGRwM2xvMjl4bmw1bDRtIn0.9zmJHnBd4bmzO8JU_PuKBA',
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 80.0,
              height: 80.0,
              point: new LatLng(51.5, -0.09),
              builder: (ctx) =>
              new Container(
                child: new FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}