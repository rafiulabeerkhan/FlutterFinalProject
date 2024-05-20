import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spare/Model.dart/ClientEntity.dart';
import 'package:spare/Model.dart/Employees.dart';
import 'package:spare/route.dart';

class ClientListView extends StatefulWidget {
  const ClientListView({super.key});

  @override
  State<ClientListView> createState() => _EmployeeListViewState();
}

class _EmployeeListViewState extends State<ClientListView> {
  late final ClientService clientService;

  @override
  void initState() {
    clientService = ClientService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 226, 233),
      appBar: AppBar(
        title: const Text("Client List"),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(employeeRoute);
        },
        child: const Icon(CupertinoIcons.person_add_solid),
      ),
      body: FutureBuilder(
          future: clientService.cacheDepartment(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return StreamBuilder(
                  stream: clientService.allClient,
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                      case ConnectionState.active:
                        if (snapshot.hasData) {
                          final allEmplyee =
                              snapshot.data as Iterable<ClientEntity>;
                          return ListView.builder(
                            itemCount: allEmplyee.length,
                            itemBuilder: (context, index) {
                              final client = allEmplyee.elementAt(index);
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 2.0, 8.0, 2.0),
                                child: ListTile(
                                  title: Text(
                                    client.clientName ?? "",
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  leading: const CircleAvatar(
                                    radius: 25, // Image radius
                                    backgroundImage: AssetImage(
                                      "images/smLogo.png",
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 61, 54, 54),
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  trailing: PopupMenuButton<ListMenu>(
                                    onSelected: (value) async {
                                      switch (value) {
                                        case ListMenu.delete:
                                          // final shouldDelete =
                                          //     //await showDeleteDialog(context);

                                          // if (shouldDelete) {
                                          //   // _employeeService.deleteNote(id: employee.id);
                                          // }

                                          break;
                                        case ListMenu.update:
                                        // Navigator.of(context).pushNamed(
                                        //   employeeFormRoute,
                                        //   arguments: employee,
                                        // );
                                      }
                                    },
                                    itemBuilder: (context) {
                                      return const [
                                        PopupMenuItem<ListMenu>(
                                          value: ListMenu.delete,
                                          child: Text("Delete"),
                                        ),
                                        PopupMenuItem<ListMenu>(
                                          value: ListMenu.update,
                                          child: Text("Update"),
                                        )
                                      ];
                                    },
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).pushNamed(
                                    //     otherProfileRoute,
                                    //     arguments: employee);
                                  },
                                ),
                              );
                            },
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      default:
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                    }
                  },
                );

              default:
                return const Center(
                  child: CircularProgressIndicator(),
                );
            }
          }),
    );
  }
}

enum ListMenu { delete, update }
