import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(23.17648611, 80.02049167);

class LastMap extends StatefulWidget {
  const LastMap({super.key});

  @override
  State<LastMap> createState() => _LastMapState();
}

class _LastMapState extends State<LastMap> {
  late GoogleMapController mapController;
  final Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.height * 0.025),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: MaterialButton(
                            height: 40.0,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                            textColor: const Color.fromRGBO(238, 75, 76, 1),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 18,
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const Text(
                          'Maps',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: MaterialButton(
                          height: 40.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: const Color.fromRGBO(238, 75, 76, 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo_2.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: currentLocation,
                zoom: 14,
              ),
              onMapCreated: (controller) {
                mapController = controller;
                addMarker('test', currentLocation);
              },
              markers: _markers.values.toSet(),
            ),
          ),
          // FloatingActionButton(onPressed: () {
          //   getCurrnetLocation().then((value) {
          //     print('my current location');
          //     print(
          //         value.latitude.toString() + " " + value.longitude.toString());
          //   });
          // }),
        ],
      ),
    );
  }

  addMarker(String id, LatLng location) async {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: const InfoWindow(
        title: 'Aaryabhatta Hostel',
        snippet: 'Boys Hostel for pre-final year student.',
      ),
    );
    _markers[id] = marker;
    setState(() {});
  }
}
