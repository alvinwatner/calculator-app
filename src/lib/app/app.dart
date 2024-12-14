import 'package:calculator_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:calculator_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:calculator_app/features/home/home_view.dart';
import 'package:calculator_app/features/startup/startup_view.dart';
import 'package:calculator_app/features/calculator/calculator_service.dart';
import 'package:calculator_app/features/calculator/calculator_repository.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: CalculatorService),
    LazySingleton(classType: CalculatorRepository),
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
  ],
)
class App {}
