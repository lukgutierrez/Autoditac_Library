import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PDFViewR()),
            );
          },
          child: Text("view"),
        ),
      ),
    );
  }
}

class PDFViewR extends StatefulWidget {
  const PDFViewR({super.key});

  @override
  State<PDFViewR> createState() => _PDFViewRState();
}

class _PDFViewRState extends State<PDFViewR> {
  final String url =
      "https://github.com/lukgutierrez/PDFVIEW/blob/b411b65bc47c2f2c522fe6b312c678af8aeccfcd/Joseph_Fadelle_-_EL_PRECIO_A_PAGAR_v4htbg.pdf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("pipo"),
        ),
        body: Container(
          child: PDF(
            swipeHorizontal: true,
          ).cachedFromUrl(
              'http://autoditac.net/wp-content/uploads/2024/04/Joseph-Fadelle-EL-PRECIO-A-PAGAR.pdf'),
        ));
  }
}
