import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'webview.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
     ..setJavaScriptMode(JavaScriptMode.unrestricted)
     ..setBackgroundColor(const Color(0x00000000))
     ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageFinished: (String url) {
            _hideHeader();
            setState(() {
              _isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            } else {
              // Try delaying slightly before allowing navigation
              Future.delayed(const Duration(milliseconds: 100));
            }
            return NavigationDecision.navigate;
          },
        ),
      )
     ..loadRequest(Uri.parse(
          'https://trungbayonline.hoangthanhthanglong.vn/Museum/ListHV?type=3d'));
  }

 Future<void> _hideHeader() async {
  try {
    await _controller.runJavaScript("document.getElementById('header').style.display = 'none';");
  } catch (error) {
    print('JavaScript error: $error');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(AppLocalizations.of(context)!.map),
      backgroundColor: const Color(0xFFC07F00),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
      body: WebViewWidget(controller: _controller),
    );
  }

  @override
  void dispose() {
    _controller.clearCache();
    super.dispose();
  }
}



