import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:snippet_coder_utils/list_helper.dart';
import 'package:snippet_coder_utils/multi_images_utils.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _Dropdown createState() => _Dropdown();
}

class _Dropdown extends State<Dropdown> {
  List<dynamic> list = [{"id":1,"label":"premier"}];

  String? id;

  dynamic ok=0;
  //String?
  List<dynamic> filtres = [
    {"val": "1", "label": "Lues"},
    {"val": "2", "label": "En cours"},
    {"val": "3", "label": "Non Lues"},
  ];
  var filtreActive;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void initState(){
      super.initState();
    }

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text("Filtres",
            style: TextStyle(
            fontSize: 25
          ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 20,
          ),
          FormHelper.dropDownWidget(
              context,
              "Filtres",
              id,
              filtres,
                  (onChangedVal) {
                    filtreActive = onChangedVal! ?? "";
                print(filtreActive);
              },
                  (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a field';
                }

                return null;
              },
              borderFocusColor: Theme.of(context).primaryColor,
              borderColor: Theme.of(context).primaryColor,
              borderRadius: 18, optionValue: "val", optionLabel: "label",
          ),
        ],
      ),
    );
  }

}