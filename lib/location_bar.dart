import 'package:flutter/material.dart';
import 'package:tuna/place_item.dart';

class LocationBar extends StatefulWidget {
  // final String selectedAddress;
  // final Function(PlaceItemRes, bool) onSelected;
  // final bool _isFromAddress;
  // const LocationBar(this.selectedAddress, this.onSelected, this._isFromAddress, {super.key});
  const LocationBar({super.key});

  @override
  _LocationBarState createState() => _LocationBarState();
}

class _LocationBarState extends State<LocationBar> {
  //var _addressController;
  //var placeBloc = PlaceBloc();

  // @override
  // void initState() {
  //   _addressController = TextEditingController(text: widget.selectedAddress);
  //   super.initState();
  // }

  @override
  void dispose() {
    //placeBloc.dispose();
    super.dispose();
  }

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
            child: TextButton(
              onPressed: () {},
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
                        child: Image.asset("assets/search.png"),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 40,
                      height: 35,
                      child: Center(
                        child: TextButton(
                            onPressed: () {
                              //_addressController.text = "";
                            },
                            child: Image.asset("assets/ic_remove_x.png")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: TextField(
                        // controller: _addressController,
                        // textInputAction: TextInputAction.search,
                        // onSubmitted: (str) {
                        //   placeBloc
                        // },
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff323643)),
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
            child: TextButton(
              onPressed: () {},
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
                        child: Image.asset("assets/ic_location_black.png"),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 40,
                      height: 35,
                      child: Center(
                        child: Image.asset("assets/ic_remove_x.png"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, right: 50),
                      child: Text(
                        "Your current location",
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff323643)),
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
