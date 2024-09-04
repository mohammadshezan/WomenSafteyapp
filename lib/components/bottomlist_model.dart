import '/flutter_flow/flutter_flow_util.dart';
import 'bottomlist_widget.dart' show BottomlistWidget;
import 'package:flutter/material.dart';

class BottomlistModel extends FlutterFlowModel<BottomlistWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioTextController1;
  String? Function(BuildContext, String?)? shortBioTextController1Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioTextController2;
  String? Function(BuildContext, String?)? shortBioTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioTextController1?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioTextController2?.dispose();
  }
}
