import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';

class SectionListView extends StatefulWidget {
  const SectionListView({super.key, required this.chapter});

  final Chapter chapter;

  @override
  State<SectionListView> createState() => _SectionListViewState();
}

class _SectionListViewState extends State<SectionListView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 3 / 4,
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  '${widget.chapter.title} - Lua chon chuong con',
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(15),
                  itemCount: widget.chapter.sections.length,
                  itemBuilder: (context, index) {
                    return SectionView(section: widget.chapter.sections[index]);
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionView extends StatelessWidget {
  const SectionView({super.key, required this.section});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: kElevationToShadow[1],
        color: Colors.white,
      ),
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                section.id.toString(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                section.title,
                style: const TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                section.description,
                style: const TextStyle(fontSize: 25, color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
