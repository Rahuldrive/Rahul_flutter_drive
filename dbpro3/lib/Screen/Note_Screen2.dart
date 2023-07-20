import 'package:dbpro3/Model/Note_Models.dart';
import 'package:dbpro3/Service/Database_Halper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Widget/NOTE_MODEL.dart';
import 'Note_Screen1.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Notes'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Note_Screen()));
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder<List<Note>?>(
        future: DatabaseHelper.getallNotes(),
        builder: (context, AsyncSnapshot<List<Note>?> Snapshot) {
          if (Snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (Snapshot.hasError) {
            return Center(
              child: Text(Snapshot.error.toString()),
            );
          } else if (Snapshot.hasData) {
            if (Snapshot.data != null) {
              return ListView.builder(
                itemBuilder: (context, index) => NoteWidget(
                    note: Snapshot.data![index],
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Note_Screen(
                                    note: Snapshot.data![index],
                                  )));
                      setState(() {});
                    },
                    onLongPress: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                  'Are you want to delete this note?'),
                              actions: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll(Colors.red)),
                                  onPressed: () async {
                                    await DatabaseHelper.deleteNote(
                                        Snapshot.data![index]);
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                  child: const Text('Yes'),
                                ),
                                ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('No'))
                              ],
                            );
                          });
                    }),
                itemCount: Snapshot.data!.length,
              );
            }
            return const Center(
              child: Text('No notes yet'),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
