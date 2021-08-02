import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_reselling_webapp/application/app_color.dart';
import 'package:up_reselling_webapp/application/style/dimens.dart';

class GridContainerBody extends StatefulWidget {
  const GridContainerBody({Key? key, required this.titleText, required this.checkText}) : super(key: key);
  final String checkText;
  final String titleText;
  @override
  State<GridContainerBody> createState() => GridContainerBodyState();
}

class GridContainerBodyState extends State<GridContainerBody> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: AppColor.backgroundLightGrey,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.borderCardGrey)),
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.only(top: Dimens.paddingMedium, bottom: Dimens.paddingMedium),
        child: Column(
          children: <Widget>[
            Text(widget.titleText,
                style: TextStyle(fontSize: Dimens.paddingMedium, color: Colors.black, fontWeight: FontWeight.bold)),

        GridItem(
          label: "\$ "+widget.checkText,
          value: _isSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
        )
          ],
        ),
      ),);
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: value,
            activeColor: AppColor.green,
            shape: CircleBorder(),
            onChanged: (bool? newValue) {
              onChanged(newValue);
            },
          ),
          Text(label),
        ],
      ),
    );
  }
}

/*

class GridItem extends StatefulWidget {
  final Key key;
  final DomainGrid item;
  final ValueChanged<bool> isSelected;

  GridItem({required this.item, required this.isSelected, required this.key});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Stack(
        children: <Widget>[
          Text(
            widget.item.domainName
          ),
          isSelected
              ? Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
            ),
          )
              : Container()
        ],
      ),
    );
  }
}*/
