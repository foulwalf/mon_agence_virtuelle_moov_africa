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
  List<dynamic> productTypesList = [{"val": "1", "label": "Simple"},{"val": "2", "label": "Variable"}];
  var productType;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void initState(){
      super.initState();
      // list.add({"id":1,"label":"premier"});
      // list.add({"id":2,"label":"premier"});
      productTypesList.add({"val": "1", "label": "Simple"});
      productTypesList.add({"val": "2", "label": "Variable"});
    }

    return SafeArea(
      child: Column(
        children: [
          FormHelper.dropDownWidget(
              context,
              "Quelle est votre préocupation?",
              id,
              productTypesList,
                  (onChangedVal) {
                productType = onChangedVal! ?? "";
                print(onChangedVal);
              },
                  (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please Select Product Type';
                }

                return null;
              },
              borderFocusColor: Theme.of(context).primaryColor,
              borderColor: Theme.of(context).primaryColor,
              borderRadius: 18, optionValue: "val", optionLabel: "label"
          ),
        ],
      ),
    );
  }

}