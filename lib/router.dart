import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';
import 'package:loan_app/dashboard/add_bvn.dart';
import 'package:loan_app/dashboard/available_cards.dart';
import 'package:loan_app/dashboard/basic_info.dart';
import 'package:loan_app/dashboard/card_settings.dart';
import 'package:loan_app/dashboard/password_settings.dart';
import 'package:loan_app/dashboard/update_kyc.dart';
import 'package:loan_app/widgets/login_pass.dart';

import 'widgets/fund_wallet.dart';
import 'widgets/withdraw.dart';
import 'dashboard/dashboard.dart';
import 'widgets/login.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case dashboardRoute:
      return MaterialPageRoute(builder: (context) => Dashboard());
    case fundWalletRoute:
      return MaterialPageRoute(builder: (context) => FundWallet());
    case withdrawFundRoute:
      return MaterialPageRoute(builder: (context) => WithdrawFund());
    case basicInfoRoute:
      return MaterialPageRoute(builder: (context) => BasicInfo());
    case updateKYCRoute:
      return MaterialPageRoute(builder: (context) => UpdateKYC());
    case addBVNRoute:
      return MaterialPageRoute(builder: (context) => AddBVN());
    case passwordRoute:
      return MaterialPageRoute(builder: (context) => PasswordSettings());
    case cardSettingsRoute:
      return MaterialPageRoute(builder: (context) => CardSettings());
    case availableCardsRoute:
      return MaterialPageRoute(builder: (context) => AvailableCards());

    case loginPassRoute:
      return MaterialPageRoute(builder: (context) => LoginPass());
    default:
      return MaterialPageRoute(builder: (context) => Login());
  }
}
