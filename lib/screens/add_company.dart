import 'package:creating_invoice_application/formfield_data/form_field_data.dart';
import 'package:flutter/material.dart';
class AddCompany extends StatefulWidget {
  const AddCompany({Key? key}) : super(key: key);

  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  final TextEditingController companyName=TextEditingController();
  final TextEditingController addressOne=TextEditingController();
  final TextEditingController addressTwo=TextEditingController();
  final TextEditingController cityName=TextEditingController();
  final TextEditingController stateName=TextEditingController();
  final TextEditingController zipCode=TextEditingController();                                          // AppBar().preferredSize.height is equal to kToolbarHeight
  final TextEditingController gstNumber=TextEditingController();
  final TextEditingController phoneNumber=TextEditingController();
  @override
  void dispose(){
    super.dispose();
    companyName.dispose();
    addressOne.dispose();
    addressTwo.dispose();
    cityName.dispose();
    stateName.dispose();
    zipCode.dispose();
    gstNumber.dispose();
    phoneNumber.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Company'),
        actions: [
          TextButton(onPressed: (){}, child: const Text('Save',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ],
        backgroundColor: Colors.grey,
        elevation: 1,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20,right: 20),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top-kToolbarHeight-MediaQuery.of(context).padding.bottom,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormFieldData.getTextFormField(context, companyName, "Company Name"),
                TextFormFieldData.getTextFormField(context, addressOne, "Address1"),
                TextFormFieldData.getTextFormField(context, addressTwo, "Address2"),
                TextFormFieldData.getTextFormField(context, cityName, "City"),
                TextFormFieldData.getTextFormField(context, stateName, "State"),
                TextFormFieldData.getTextFormField(context, zipCode, "ZipCode"),
                TextFormFieldData.getTextFormField(context, phoneNumber, "Phone Number"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
