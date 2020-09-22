import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jzquizz/res/app_colors.dart';
import 'package:jzquizz/res/dimens.dart';
import 'package:jzquizz/src/ui/review_result/views/review_result_item.dart';

class ReviewResultData {
  List<ReviewResultItemData> listResult;

  ReviewResultData({
    @required this.listResult,
  });
}

class ReviewResultScreen extends StatelessWidget {
  static const routeName = '/review_result';
  ReviewResultData data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: Dimens.backIconSize,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: data == null
          ? Center(
              child: Text('No Data'),
            )
          : Container(
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    _getItem(data.listResult[index]),
                itemCount: data.listResult.length,
              ),
            ),
    );
  }

  Widget _getItem(ReviewResultItemData data) {
    return ReviewResultItemView(
      data: data,
    );
  }
}
