import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/DATABASE/cubit.dart';

import '../constant.dart';
import '../work_hour/views/work_hour.dart';
import 'Add_doctors/Data/all_doctor_model.dart';

class ProfileScreen extends StatelessWidget {
  final DataDoctor doc;
  var cubit = AppCubit();
  ProfileScreen({Key? key, required this.doc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit..getalldoctor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            patient_model!.data!.roleId == 3
                ? IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider.value(
                                    value: cubit,
                                    child: WorkHourScreen(
                                      doc: doc,
                                    ),
                                  )));
                    },
                    icon: Icon(Icons.add),
                    color: Colors.deepPurple,
                  )
                : Container()
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("asset/image/1.jpg"),
                ),
                const SizedBox(height: 20),
                itemProfile(
                    "DR :", '${doc.firstName} ${doc.lastName}', Icons.person),
                const SizedBox(height: 10),
                itemProfile("Phone Number", '${doc.phone}', Icons.phone),
                const SizedBox(height: 10),
                itemProfile("Specialization", '${doc.doctor!.specialization}',
                    Icons.science),
                const SizedBox(height: 10),
                itemProfile("Email", '${doc.email}', Icons.mail),
                const SizedBox(
                  height: 10,
                ),
                itemProfile("Birthday", '${doc.birthDate}', Icons.date_range),
                const SizedBox(
                  height: 10,
                ),
                itemProfile("Fees", '${doc.doctor!.fee} EG', Icons.money),
                const SizedBox(
                  height: 20,
                ),
                itemProfile(
                    "Day Work", "<in our Hospital>", Icons.calendar_month),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 5,
                        ),
                    shrinkWrap: true, // Add this line
                    physics: NeverScrollableScrollPhysics(), // A
                    itemCount: doc.workingHours!.length,
                    itemBuilder: (context, index) => DayWork(
                        day: doc.workingHours![index].day!,
                        start_time: doc.workingHours![index].startDate!,
                        end_time: doc.workingHours![index].endDate!))
              ],
            ),
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pinkAccent[100]!.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color:
                    const Color.fromARGB(255, 216, 218, 203).withOpacity(0.6),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        // trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }

  DayWork(
      {required String day,
      required String start_time,
      required String end_time}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pinkAccent[100]!.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color:
                    const Color.fromARGB(255, 216, 218, 203).withOpacity(0.6),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(day),
        subtitle: Text("From:- ${start_time}  To:- ${end_time}"),
        // trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}