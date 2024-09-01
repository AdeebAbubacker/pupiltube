import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/service/admin/role_servcie/get_role_service.dart';
import 'package:puppil/core/service/auth/auth_service.dart';
import 'package:puppil/core/view_model/GetUserDataByRoles/get_user_data_by_roles_bloc.dart';

class AdminControlScreen extends StatefulWidget {
  const AdminControlScreen({super.key});

  @override
  State<AdminControlScreen> createState() => _AdminControlScreenState();
}

class _AdminControlScreenState extends State<AdminControlScreen> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<GetUserDataByRolesBloc>(context)
          .add(const GetUserDataByRolesEvent.fetchGetUserDataByRoles());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showQuestionBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                width: MediaQuery.of(context).size.width * .95,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 47, 47, 165),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9)),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .15,
                        child: Text(
                          "Id",
                          style: TextStyles.rubik14whiteFF,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .32,
                        child: Text(
                          "Name",
                          style: TextStyles.rubik14whiteFF,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .30,
                        child: Text(
                          "Class",
                          style: TextStyles.rubik14whiteFF,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .04,
                        child: Text(
                          "#",
                          style: TextStyles.rubik14whiteFF,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .04,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 239, 239),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(9),
                      bottomRight: Radius.circular(9)),
                ),
                width: MediaQuery.of(context).size.width * .95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<GetUserDataByRolesBloc,
                        GetUserDataByRolesState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          getuserdatabyRoles: (value) {
                            return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.all(0),
                              itemCount: value.rolemodel.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                print("${value.rolemodel[index].uid}");
                                return UserDataWidget(
                                  id: "${index + 1}",
                                  name: "${value.rolemodel[index].name}",
                                  className:
                                      "${value.rolemodel[index].classId}",
                                  onPressed: () async {
                                    print("${value.rolemodel[index].uid}");
                                    await AuthService(FirebaseAuth.instance)
                                        .deleteUser(
                                            "${value.rolemodel[index].uid}",
                                            "${value.rolemodel[index].classId}",);
                                  },
                                );
                              },
                            );
                          },
                          orElse: () {
                            return const Text("Erro");
                          },
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showQuestionBottomSheet(BuildContext context) {
    String? _selectedString;
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController classController = TextEditingController();
    final List<String> _options = [
      "d0087d35-9bdc-4d3b-af95-de9b1b910c41",
      "ELdOiMB20ROxsHtu8R74",
    ];
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Create New Student',
                                style: TextStyles.rubik10greyDA6,
                              ),
                              IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(
                                      context); // Close the bottom sheet
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                            ),
                            controller: nameController,
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                            ),
                            controller: emailController,
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                            controller: passwordController,
                          ),
                          const SizedBox(height: 20),
                          DropdownButtonFormField<String>(
                            value: _selectedString,
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                            hint: Text(
                              'Choose an option',
                              style: TextStyles.rubik12black54Aw400,
                            ),
                            items: _options.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value ==
                                          "d0087d35-9bdc-4d3b-af95-de9b1b910c41"
                                      ? "class4 "
                                      : "Class 5",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedString = newValue;
                              });
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                AuthService(FirebaseAuth.instance)
                                    .signUpAndSaveUserData(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  classId: _selectedString.toString(),
                                  role: 3,
                                );
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) async {
                                  BlocProvider.of<GetUserDataByRolesBloc>(
                                          context)
                                      .add(const GetUserDataByRolesEvent
                                          .fetchGetUserDataByRoles());
                                });
                              },
                              child: const Text("Create Student"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class UserDataWidget extends StatelessWidget {
  final String id;
  final String name;
  final String className;
  final VoidCallback onPressed;
  const UserDataWidget({
    super.key,
    required this.name,
    required this.id,
    required this.className,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .04,
          height: 40,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * .15,
            child: Text(
              id,
              style: TextStyles.rubik14greyDA6,
            )),
        SizedBox(
            width: MediaQuery.of(context).size.width * .32,
            child: Text(
              name,
              style: TextStyles.rubik14greyDA6,
            )),
        SizedBox(
            width: MediaQuery.of(context).size.width * .25,
            child: Text(
              className,
              style: TextStyles.rubik14greyDA6,
            )),
        SizedBox(
            width: MediaQuery.of(context).size.width * .1,
            child: IconButton(
                onPressed: onPressed, icon: const Icon(Icons.delete_rounded))),
      ],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:puppil/core/service/admin/role_servcie/get_role_service.dart';

// class AdminControlScreen extends StatelessWidget {
//   const AdminControlScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(body: Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//         ElevatedButton(onPressed: () async{
//         await  GetRoleService().fetchClassIdForStudent();
//         }, child: Text("data"))
//       ],),
//     ),);
//   }
// }