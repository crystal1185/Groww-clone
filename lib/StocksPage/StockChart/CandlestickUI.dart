import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:ui' as ui;
import '../../provider/ServerProvider.dart';
import 'CandlestickModal.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class CandleStickDetails extends StatefulWidget {
  const CandleStickDetails({super.key});

  @override
  State<CandleStickDetails> createState() => _CandleStickDetailsState();
}

class _CandleStickDetailsState extends State<CandleStickDetails> {
  late List<Candlestickdata> _chartData;
  late ZoomPanBehavior _zoomPanBehavior;

  late TrackballBehavior _trackballBehavior;
  late bool _toggleVisibility;
  late bool _enableSolidCandle;
  ChartSeriesController? SeriesController;
  IO.Socket? socket;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final SocketIP = Provider.of<ServerProvider>(context, listen: false);
    _toggleVisibility = true;
    connect(SocketIP.Socket_server_IP);
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      enableSelectionZooming: true,
    );
    _enableSolidCandle = false;
    _chartData = getData();
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);

    //connectStream();
  }

  void connect(String serverIp) {
    socket = IO.io(serverIp, <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": false,
    });
    socket!.connect();
    socket!.onConnect((_) {
      print("--------connected to Naveen backend----------");

      socket!.on(
        'message',
        (data) {
          // data = await data;
          print(data.toString());
        },
      );
    });
    socket!.onConnectError((data) => {print("------------------ $data")});

    //socket!.on('event', (data) => print(data));
    // socket!.onDisconnect((_) => print('disconnect'));
    // socket!.on('fromServer', (_) => print(_));
  }

  List<Candlestickdata> getData() {
    return <Candlestickdata>[
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:21.739Z"),
          open: 86.3593,
          high: 85.1435,
          low: 84.3914,
          close: 86.3593),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:23.617Z"),
          open: 0,
          high: 87.1435,
          low: 84.3914,
          close: 0),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:24.744Z"),
          open: 0,
          high: 88.1435,
          low: 84.3914,
          close: 0),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:25.869Z"),
          open: 0,
          high: 88.1435,
          low: 84.3914,
          close: 0),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:27.096Z"),
          open: 0,
          high: 70.1435,
          low: 50.0,
          close: 0),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:28.338Z"),
          open: 86.3593,
          high: 88.1435,
          low: 84.3914,
          close: 86.3593),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:29.552Z"),
          open: 86.3593,
          high: 88.1435,
          low: 84.3914,
          close: 86.3593),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:30.682Z"),
          open: 86.3593,
          high: 88.1435,
          low: 84.3914,
          close: 86.3593),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:31.911Z"),
          open: 86.3593,
          high: 88.1435,
          low: 84.3914,
          close: 86.3593),
      Candlestickdata(
          X: DateTime.parse("2023-02-20T13:11:33.037Z"),
          open: 86.3593,
          high: 88.1435,
          low: 84.3914,
          close: 86.3593),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final SocketsIp = Provider.of<ServerProvider>(context);
    // connect(SocketsIp.Socket_server_IP);
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      // color: Colors.amber,
      child: Column(
        children: [
          Directionality(
            textDirection: ui.TextDirection.rtl,
            child: SfCartesianChart(
              // loadMoreIndicatorBuilder: (context, direction) => ,
              zoomPanBehavior: _zoomPanBehavior,

              trackballBehavior: _trackballBehavior,
              borderColor: Colors.black,
              enableAxisAnimation: true,
              // legend: Legend(isVisible: true),
              series: [
                CandleSeries<Candlestickdata, DateTime>(
                  bullColor: Colors.green,
                  // showIndicationForSameValues: false,
                  bearColor: Colors.red,
                  // enableSolidCandles: true,                  name: "NSE",

                  dataSource: _chartData,
                  xValueMapper: (Candlestickdata sales, _) => sales.X,
                  closeValueMapper: (Candlestickdata sales, _) => sales.close,
                  lowValueMapper: (Candlestickdata sales, _) => sales.low,
                  highValueMapper: (Candlestickdata sales, _) => sales.high,
                  openValueMapper: (Candlestickdata sales, _) => sales.open,
                ),
              ],
              primaryXAxis: DateTimeAxis(),
              primaryYAxis: NumericAxis(
                isVisible: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Widget getLoadMoreViewBuilder(
//       BuildContext context, ChartSwipeDirection direction) {
//        if (direction == ChartSwipeDirection.end) {
//          return FutureBuilder<String>(
//            future: _updateData(), /// Adding data by updateDataSource method
//            builder:
//             (BuildContext futureContext, AsyncSnapshot<String> snapShot) {
//              return snapShot.connectionState != ConnectionState.done
//// /               ? const CircularProgressIndicator()
//                  : SizedBox.fromSize(size: Size.zero);
//             },
//          );
//        } else {
//          return SizedBox.fromSize(size: Size.zero);
//        }
//     }
