import 'package:flutter/material.dart';

class BlogRow extends StatelessWidget {
  final String title;
  final String excerpt;
  final String coverURL;
  final String authorName;

  const BlogRow({
    super.key,
    required this.title,
    required this.excerpt,
    required this.coverURL,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            // ignore: unnecessary_null_comparison
            child: coverURL != null
                ? Image.network(
                    coverURL,
                    width: 65,
                    height: 65,
                  )
                : const FlutterLogo(),
            // FlutterLogo(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  excerpt,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 12),
                ),
                Text(
                  "By $authorName",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 10),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
