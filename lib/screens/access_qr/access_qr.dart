import 'package:demo/screens/withdraw/value_withdraw.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../presentation/resources/routes_manager.dart';


class QRScannerScreen extends StatefulWidget {
  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool cameraReady = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildQrView(context),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Text('Scan QR Code', textAlign: TextAlign.center),
          ),//positions of qr (squares)
        ],
      ),
    );
  }

  Widget buildQrView(BuildContext context) {
    final scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 300.0;// width and height of qr square

    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.green,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      formatsAllowed: [BarcodeFormat.qrcode],
    ); // radius
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((scanData) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ValueWithdrawView()));
    });

    controller
        .getCameraInfo()
        .then((cameraInfo) => setState(() => cameraReady = true))
        .catchError((error) => print('Error: $error'));
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

class ScannedDataScreen extends StatefulWidget {
  final String code;

  ScannedDataScreen({required this.code});

  @override
  _ScannedDataScreenState createState() => _ScannedDataScreenState();
}

class _ScannedDataScreenState extends State<ScannedDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanned QR Code'), //bottom text
      ),
      body: Center(
        child: Text('Scanned QR Code: ${widget.code}'),
      ),
    );
  }
}
