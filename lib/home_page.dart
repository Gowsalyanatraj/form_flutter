import 'package:flutter/material.dart';

import 'decoration.dart';

class PersonalInfoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
      const Text(
        'New Appointment',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16.0),
      Expanded(
        child: Center(
          child: Container(
            height: 550,
            width: 1000,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
            
              boxShadow:const [
                BoxShadow(
                  color: Color(0x0c000000),
                  blurRadius: 0,
                  offset: Offset(0, 0),
                ),
                BoxShadow(
                  color: Color(0x0c000000),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
                BoxShadow(
                  color: Color(0x0a000000),
                  blurRadius: 18,
                  offset: Offset(0, 18),
                ),
                BoxShadow(
                  color: Color(0x07000000),
                  blurRadius: 24,
                  offset: Offset(0, 40),
                ),
                BoxShadow(
                  color: Color(0x02000000),
                  blurRadius: 28,
                  offset: Offset(0, 70),
                ),
                BoxShadow(
                  color: Color(0x00000000),
                  blurRadius: 31,
                  offset: Offset(0, 110),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        //form=======================================================
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: formField(
                              labelText: 'Patient Name', hintText: ''),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: formField(
                            labelText: 'Appointment Location', hintText: ''),
                      )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: formField(
                            labelText: 'Referred Doctor', hintText: ''),
                      )),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: formField(labelText: 'Scan type', hintText: ''),
                      )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child:
                            formField(labelText: 'Doctor Name', hintText: ''),
                      )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: formField(
                            labelText: 'Radiologist Name', hintText: ''),
                      )),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: SizedBox(
                        child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      // expands: true,
                      decoration: const InputDecoration(
                          labelText: 'Differential Diagnosis',
                          border: OutlineInputBorder()),
                    )),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 180),
                        child: formField(
                            labelText: 'Appointment Date',
                            hintText: ''),
                      )),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 180),
                          child: formField(
                              labelText: 'Appointment Time', hintText: '10.30 AM'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 350, top: 20),
                    child: Row(
                      children: [
                        Container(
                          color: Colors.grey.shade200,
                          child: TextButton.icon(
                              onPressed: () {},
                              icon:const Icon(Icons.cancel),
                              label: const Text('Cancel')),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          color: Colors.green,
                          child: TextButton.icon(
                              onPressed: () {},
                              icon:const Icon(
                                Icons.group_add_outlined,
                                color: Colors.white,
                              ),
                              label:const Text(
                                'Create',
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
