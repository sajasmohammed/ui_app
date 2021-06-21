import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_app/model/data.dart';
import 'package:ui_app/sizeConfig.dart';
import 'package:ui_app/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to UI Master"),
      ),
      body: WillPopScope(
        onWillPop: () => _backToSystem(context),
        child: Container(
          padding: EdgeInsets.all(sizeConfig.smallSize),
          child: ListView.builder(
              itemCount: listDatas.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(sizeConfig.mediumSize),
                      color: Colors.blueGrey,
                    ),
                    child: ListTile(
                      onTap: () {
                        listDatas[index].status==true?Navigator.push(context, MaterialPageRoute(builder: (context)=>listDatas[index].page!)):showDialog(
                            context: context,
                            builder: (context) => cWidget.alertDialog(),);
                      },
                      title: Row(
                        children: [
                          Text(
                            listDatas[index].title!,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: sizeConfig.largeSize),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: listDatas[index].status == true
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          )
                        ],
                      ),
                      subtitle: Text(
                        listDatas[index].message!,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      trailing: SvgPicture.asset(
                        listDatas[index].img!,
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  _backToSystem(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.info),
              Text("Do you want to close?"),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No"),
            ),
            ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text("Yes"),
            )
          ],
        ),
      );
}
