import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationinfoWidget extends StatefulWidget {
  const LocationinfoWidget({
    Key? key,
    this.location,
  }) : super(key: key);

  final ParkRecord? location;

  @override
  _LocationinfoWidgetState createState() => _LocationinfoWidgetState();
}

class _LocationinfoWidgetState extends State<LocationinfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF6493FF),
        borderRadius: BorderRadius.circular(0),
      ),
      child: StreamBuilder<List<ParkRecord>>(
        stream: queryParkRecord(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            );
          }
          List<ParkRecord> columnParkRecordList = snapshot.data!;
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(columnParkRecordList.length, (columnIndex) {
              final columnParkRecord = columnParkRecordList[columnIndex];
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
