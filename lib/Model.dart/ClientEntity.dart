import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spare/Model.dart/Employees.dart';

ClientEntity clientFromJson(String str) =>
    ClientEntity.fromJson(json.decode(str));

String clientToJson(ClientEntity data) => json.encode(data.toJson());

class ClientEntity {
  int? clientId;
  String? clientName;
  String? designation;
  String? contactNo;
  String? officeAddress;
  String? orderInfo;
  int? quantity;

  ClientEntity(
      {this.clientId,
      this.clientName,
      this.designation,
      this.contactNo,
      this.officeAddress,
      this.orderInfo,
      this.quantity,
      required int materialId,
      required int product_id});

  ClientEntity.fromJson(Map<String, dynamic> json) {
    clientId = json['clientId'];
    clientName = json['clientName'];
    designation = json['designation'];
    contactNo = json['contactNo'];
    officeAddress = json['officeAddress'];
    orderInfo = json['orderInfo'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clientId'] = this.clientId;
    data['clientName'] = this.clientName;
    data['designation'] = this.designation;
    data['contactNo'] = this.contactNo;
    data['officeAddress'] = this.officeAddress;
    data['orderInfo'] = this.orderInfo;
    data['quantity'] = this.quantity;
    return data;
  }

  @override
  String toString() {
    return ''' employee $clientName ''';
  }
}

class ClientService {
  List<ClientEntity> _department = [];

  static final ClientService _shared = ClientService._sahredInstance();

  ClientService._sahredInstance() {
    _deparmentStreamController = StreamController<List<ClientEntity>>.broadcast(
      onListen: () {
        _deparmentStreamController.sink.add(_department);
      },
    );
  }

  factory ClientService() => _shared;

  late final StreamController<List<ClientEntity>> _deparmentStreamController;

  Stream<List<ClientEntity>> get allClient => _deparmentStreamController.stream;

  final String _url = "https://flutterapiwthspring.onrender.com/client";
  final String _url2 = "https://flutterapiwthspring.onrender.com/client/getAll";

  Future<void> cacheDepartment() async {
    final allDep = await geAllClient();
    _department = allDep;
    _deparmentStreamController.add(_department);
  }

  Future<void> postDepartment({required ClientEntity clientEntity}) async {
    var response = await http.post(Uri.parse(_url),
        headers: {"Content-Type": "application/json"},
        body: clientToJson(clientEntity));
    if (response.statusCode < 301) {
      _department.add(clientEntity);
      _deparmentStreamController.add(_department);
    }
  }

  Future<List<ClientEntity>> geAllClient() async {
    var response = await http
        .get(Uri.parse(_url2), headers: {"Content-Type": "application/json"});
    Iterable l = json.decode(response.body);
    print(l);
    List<ClientEntity> departemts =
        List<ClientEntity>.from(l.map((dep) => ClientEntity.fromJson(dep)));

    return departemts;
  }
}
