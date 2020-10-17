import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class PDFMain extends StatefulWidget {
  @override
  _PDFMainState createState() => _PDFMainState();
}

final FirebaseStorage storage = FirebaseStorage.instance;

Future<String> uploadImage(var durl) async {
  StorageReference ref = storage.ref().child("/testing/LT.pdf");
  StorageUploadTask uploadTask = ref.putFile(durl);

  var dowurl = await (await uploadTask.onComplete).ref.getDownloadURL();
  var url = dowurl.toString();

  return url;
}

class _PDFMainState extends State<PDFMain> {
  String urlPDFPath = '';

  @override
  void initState() {
    super.initState();

    getFileFromUrl(
            "https://firebasestorage.googleapis.com/v0/b/icsi-15819.appspot.com/o/Laplace%20transforms.pdf?alt=media&token=72a8bb94-a783-4935-af38-267aa4ba8ff6")
        .then((value) {
      setState(() {
        urlPDFPath = value.path;
      });
    });
  }

  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      // StorageReference sr = StorageReference.getReference();
      var byte = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/Laplace transforms.pdf");

      File urlFile = await file.writeAsBytes(byte);
      return urlFile;
    } catch (e) {
      throw Exception("Error In Loding The file");
    }
  }

  @override
  Widget build(BuildContext context) {
    return urlPDFPath != null
        ? Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PDFViewPage(
                path: urlPDFPath,
              ),
            ),
          )
        : Offset;
  }
}

class PDFViewPage extends StatefulWidget {
  final String path;

  const PDFViewPage({Key key, this.path}) : super(key: key);

  @override
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  bool pdfready = false;
  int _totalPages = 0;
  int _currentPage = 0;
  PDFViewController _pdfViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Document"),
      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            enableSwipe: true,
            autoSpacing: true,
            pageSnap: true,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfready = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            swipeHorizontal: true,
          ),
          !pdfready ? Center(child: CircularProgressIndicator()) : Offstage(),
        ],
      ),
    );
  }
}
