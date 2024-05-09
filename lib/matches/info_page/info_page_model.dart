import '/components/tabbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'info_page_widget.dart' show InfoPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoPageModel extends FlutterFlowModel<InfoPageWidget> {
  ///  Local state fields for this page.

  int? selectedTeam = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for tabbar component.
  late TabbarModel tabbarModel;

  @override
  void initState(BuildContext context) {
    tabbarModel = createModel(context, () => TabbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    tabbarModel.dispose();
  }
}
