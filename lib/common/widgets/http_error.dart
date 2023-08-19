import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HttpError extends StatelessWidget {
  const HttpError(
      {required this.errMsg, required this.fn, this.btnText, super.key});

  final String? errMsg;
  final Function()? fn;
  final String? btnText;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/error.svg",
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              errMsg ?? '请求异常',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                fn!();
              },
              icon: const Icon(Icons.arrow_forward_outlined, size: 20),
              label: Text(btnText ?? '点击重试'),
            )
          ],
        ),
      ),
    );
  }
}
