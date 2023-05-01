import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:gallery_saver/gallery_saver.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  late Future<ListResult> futureFiles;
  Map<int, double> downloadProgress = {};
  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/files').listAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     SizedBox(
      //       height: MediaQuery.of(context).size.height * 0.1,
      //       width: MediaQuery.of(context).size.width,
      //       child: Column(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.all(
      //                 MediaQuery.of(context).size.height * 0.025),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * 0.15,
      //                   height: MediaQuery.of(context).size.height * 0.05,
      //                   child: MaterialButton(
      //                       onPressed: () {
      //                         Navigator.pop(context);
      //                       },
      //                       color: Colors.white,
      //                       textColor: const Color.fromRGBO(238, 75, 76, 1),
      //                       shape: const RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.only(
      //                           topLeft: Radius.circular(10.0),
      //                           topRight: Radius.circular(10.0),
      //                           bottomLeft: Radius.circular(10.0),
      //                           bottomRight: Radius.circular(10.0),
      //                         ),
      //                       ),
      //                       child: const Row(
      //                         children: [
      //                           Icon(
      //                             Icons.arrow_back_ios_new,
      //                             size: 18,
      //                           ),
      //                         ],
      //                       )),
      //                 ),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * 0.45,
      //                   child: const Text(
      //                     'Images',
      //                     textAlign: TextAlign.center,
      //                     style: TextStyle(
      //                         fontWeight: FontWeight.bold, fontSize: 20),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * 0.15,
      //                   height: MediaQuery.of(context).size.height * 0.05,
      //                   child: MaterialButton(
      //                     onPressed: () {},
      //                     color: Colors.white,
      //                     textColor: const Color.fromRGBO(238, 75, 76, 1),
      //                     shape: const RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.only(
      //                         topLeft: Radius.circular(10.0),
      //                         topRight: Radius.circular(10.0),
      //                         bottomLeft: Radius.circular(10.0),
      //                         bottomRight: Radius.circular(10.0),
      //                       ),
      //                     ),
      //                     child: Container(
      //                       width: 24.0,
      //                       height: 24.0,
      //                       decoration: const BoxDecoration(
      //                         image: DecorationImage(
      //                           image: AssetImage('assets/images/logo_2.png'),
      //                           fit: BoxFit.contain,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Column(
      //       children: [
      body: FutureBuilder<ListResult>(
        future: futureFiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;
            return ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                final file = files[index];
                double? progress = downloadProgress[index];
                return ListTile(
                  title: Text(file.name),
                  subtitle: progress != null
                      ? LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.black,
                        )
                      : null,
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.download,
                      color: Colors.black,
                    ),
                    onPressed: () => downloadFile(index, file),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error occured'),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      //   ],
      // ),
      //   ],
      // ),
    );
  }

  Future downloadFile(int index, Reference ref) async {
    final url = await ref.getDownloadURL();

    final tempDir = await getTemporaryDirectory();
    final path = '${tempDir.path}/${ref.name}';
    await Dio().download(
      url,
      path,
      onReceiveProgress: (count, total) {
        double progress = count / total;
        setState(() {
          downloadProgress[index] = progress;
        });
      },
    );

    if (url.contains('.jpg')) {
      await GallerySaver.saveImage(path, toDcim: true);
    }

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Downloaded ${ref.name}')),
    );
  }
}
