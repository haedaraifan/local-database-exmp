import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_database_exmp/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.createNote,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("local database crud"),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
          ? const Center(
            child: CircularProgressIndicator()
          )
          : ListView.builder(
            shrinkWrap: true,
            itemCount: controller.notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.notes[index].title),
                subtitle: Text(controller.notes[index].content),
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: const Text("edit"),
                      onTap: () => controller.editNote(index),
                      ),
                    PopupMenuItem(
                      child: const Text("delete"),
                      onTap: () => controller.deleteNote(controller.notes[index].id!),
                    ),
                  ],
                ),
              );
            }
          )
        ),
      )
    );
  }
}