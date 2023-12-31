import 'package:flutter/material.dart';
import 'package:tuna/location_bar.dart';
import 'package:tuna/place_item.dart';

class Location extends StatefulWidget {
  // final Function(PlaceItemRes, bool) onSelected;
  // const Location(this.onSelected, {super.key});
  const Location({super.key});

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  // late PlaceItemRes fromAddress;
  // late PlaceItemRes toAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color(0x88999999),
              offset: Offset(0, 5),
              blurRadius: 5.0,
            ),
          ]),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) =>
                //         LocationBar(fromAddress == null ? "" : fromAddress.name,
                //             (place, isFrom) {
                //           widget.onSelected(place, isFrom);
                //           fromAddress = place;
                //           setState(() {});
                //         }, true)));
              },
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                      height: 50,
                      child: Center(
                        child: Image.asset("ic_location_black.png"),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 40,
                      height: 50,
                      child: Center(
                        child: Image.asset("ic_remove_x.png"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: Text("NN"
                        // fromAddress == null ? "From" : fromAddress.name,
                        // overflow: TextOverflow.ellipsis,
                        // style: const TextStyle(
                        //     fontSize: 16, color: Color(0xff323643)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) =>
                //         LocationBar(toAddress == null ? "" : toAddress.name,
                //             (place, isFrom) {
                //           widget.onSelected(place, isFrom);
                //           toAddress = place;
                //           setState(() {});
                //         }, false)));
              },
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                      height: 50,
                      child: Center(
                        child: Image.asset("ic_map_nav.png"),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 40,
                      height: 50,
                      child: Center(
                        child: Image.asset("ic_remove_x.png"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: Text("EEEE"
                        // toAddress == null ? "To" : toAddress.name,
                        // overflow: TextOverflow.ellipsis,
                        // style: const TextStyle(
                        //     fontSize: 16, color: Color(0xff323643)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
