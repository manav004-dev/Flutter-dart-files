import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnv/tree/tree_plant_controller.dart';

class TreeScreen extends StatelessWidget {
  const TreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TreeController controller = Get.put(TreeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tree Plants'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator(color: Colors.green));
        }

        if (controller.treeDataList.isEmpty) {
          return const Center(child: Text('No data found'));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: controller.treeDataList.length,
          itemBuilder: (context, index) {
            final item = controller.treeDataList[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey.shade100,
                    child: item.image != null && item.image!.isNotEmpty
                        ? Image.network(
                      item.image!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.eco, color: Colors.green, size: 30),
                    )
                        : const Icon(Icons.eco, color: Colors.green, size: 30),
                  ),
                ),
                title: Text(
                  item.name ?? 'Unknown Tree',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.scientificName != null && item.scientificName!.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        item.scientificName!,
                        style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                    ],
                    const SizedBox(height: 4),
                    Text(
                      item.description ?? 'No description available',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
