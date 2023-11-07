import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/category/category_watcher_cubit.dart';

class CategoryOverviewWidget extends StatelessWidget {
  const CategoryOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryWatcherCubit, CategoryWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
            loadCategoriesSuccess: (state) {
              final categoryList = state.categoryList;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Wrap(
                    spacing: 4,
                    runSpacing: 8,
                    children: [
                      ...categoryList.map((e) {
                        final categoryWidgetWidth =
                            (constraints.maxWidth / 2) - 4;
                        return Container(
                          height: 64,
                          width: categoryWidgetWidth,
                          decoration: BoxDecoration(
                              color: const Color(0xffF3F3F4),
                              borderRadius: BorderRadius.circular(32)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                height: 56,
                                width: 56,
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ),
                              const SizedBox(width: 4,),
                              Expanded(
                                  child: Text(
                                e.name,
                                style: const TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ))
                            ],
                          ),
                        );
                      })
                    ],
                  );
                }),
              );
            },
            loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            orElse: () => const SizedBox());
      },
    );
  }
}
