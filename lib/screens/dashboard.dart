import 'package:creating_invoice_application/authorization/change_password.dart';
import 'package:creating_invoice_application/screens/add_company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if(isDialOpen.value)
          {
            isDialOpen.value = false;
            return false;
          }
        else {
          return true;
        }

      },
      child: Scaffold(
        floatingActionButton: SpeedDial(
          openCloseDial: isDialOpen,
          overlayColor: Colors.white,
          spaceBetweenChildren: 12,
          spacing: 12,
          overlayOpacity: 0.4,
          backgroundColor: Colors.black,
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangePassword()));
              },
              child: const Icon(Icons.person),
              backgroundColor: Colors.green,
              label: 'Add Customer'
            ),
            SpeedDialChild(
          onTap: () => Navigator.push(context, MaterialPageRoute(fullscreenDialog: true,
              builder: (context)=>const AddCompany())),
              child: const Icon(Icons.business),
              backgroundColor: Colors.pinkAccent,
              label: 'Add Company'
            ),
          ],
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Dashboard'),
        ),
        body: Wrap(),
      ),
    );
  }
  Future showToast(String message) async {
    await Fluttertoast.cancel();
    Fluttertoast.showToast(msg: message,fontSize: 20,gravity: ToastGravity.CENTER);
  }
}
