import 'package:spare/Employees.dart/Client_form.dart';
import 'package:spare/Employees.dart/Employee_form.dart';
import 'package:spare/Login_Signup/Login.dart';
import 'package:spare/Login_Signup/Signup.dart';
import 'package:spare/view/Employee_ListView.dart';
import 'package:spare/view/innerlanding_view.dart';
import 'package:spare/view/outerlandingView.dart';
import 'package:spare/view/profile_view.dart';
import 'package:spare/view/widget/innerlanding/Client_ListView..dart';

const outerLandingRoute = "/outer/";
const innerLandingRoute = "/inner/";
const profileRoute = "/profile/";
const loginRoute = "/login/";
const signupRoute = "/signup/";
const employeeRoute = "/employee/";
const employeeListRoute = "/employeelist/";
const clientRoute = "/client/";
const clientListRoute = "/clientlist/";

final route = {
  outerLandingRoute: (context) => const OuterLandingView(),
  innerLandingRoute: (context) => const OfficeView(),
  profileRoute: (context) => const ProfileView(),
  loginRoute: (context) => const Login(),
  signupRoute: (context) => Signup(),
  employeeRoute: (context) => EmployeeDetails(),
  employeeListRoute: (context) => EmployeeListView(),
  clientRoute: (context) => ClientDetials(),
  clientListRoute: (context) => ClientListView(),
};
