import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Task',
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: ListView(
                clipBehavior: Clip.antiAlias,
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius
                                      .circular(25),
                              child:
                                  const CircleAvatar(
                                backgroundColor:
                                    Colors.amber,
                                radius: 20,
                                foregroundImage:
                                    NetworkImage(
                                        'https://awsimages.detik.net.id/community/media/visual/2020/10/20/jo-bo-ah-3_34.jpeg?w=375'),
                              ),
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius
                                      .circular(25),
                              child:
                                  const CircleAvatar(
                                backgroundColor:
                                    Colors.amber,
                                radius: 20,
                                foregroundImage:
                                    NetworkImage(
                                        'https://awsimages.detik.net.id/community/media/visual/2020/10/20/jo-bo-ah-3_34.jpeg?w=375'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 80,
                              color:
                                  AppColors.primaryBg,
                              child: const Center(
                                child: Text(
                                  '100%',
                                  style: TextStyle(
                                    color: AppColors
                                        .primaryText,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBg,
                          child: const Center(
                            child: Text(
                              '10/10 Task',
                              style: TextStyle(
                                color: AppColors
                                    .primaryText,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Mobile Programming',
                          style: TextStyle(
                              color: AppColors
                                  .primaryText,
                              fontSize: 20),
                        ),
                        const Text(
                          'Deadline 2 Days Left',
                          style: TextStyle(
                              color: AppColors
                                  .primaryText,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius
                                      .circular(25),
                              child:
                                  const CircleAvatar(
                                backgroundColor:
                                    Colors.amber,
                                radius: 20,
                                foregroundImage:
                                    NetworkImage(
                                        'https://awsimages.detik.net.id/community/media/visual/2020/10/20/jo-bo-ah-3_34.jpeg?w=375'),
                              ),
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius
                                      .circular(25),
                              child:
                                  const CircleAvatar(
                                backgroundColor:
                                    Colors.amber,
                                radius: 20,
                                foregroundImage:
                                    NetworkImage(
                                        'https://awsimages.detik.net.id/community/media/visual/2020/10/20/jo-bo-ah-3_34.jpeg?w=375'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 80,
                              color:
                                  AppColors.primaryBg,
                              child: const Center(
                                child: Text(
                                  '100%',
                                  style: TextStyle(
                                    color: AppColors
                                        .primaryText,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBg,
                          child: const Center(
                            child: Text(
                              '10/10 Task',
                              style: TextStyle(
                                color: AppColors
                                    .primaryText,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Mobile Programming',
                          style: TextStyle(
                              color: AppColors
                                  .primaryText,
                              fontSize: 20),
                        ),
                        const Text(
                          'Deadline 2 Days Left',
                          style: TextStyle(
                              color: AppColors
                                  .primaryText,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
