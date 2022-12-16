import 'package:flutter/material.dart';
import 'package:watch_app/widgets/widgets.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const url =
        'https://elcomercio.pe/resizer/ecmmfq6CpV3udjL_xRDoBMZ2YE4=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/3BDBWQIF5VBAHKLALFPTTX4JCY.jpg';

    return Stack(
      children: [
        ContinuousContainer(
          height: 50,
          width: 50,
          border: 20,
          child: const Image(
            image: NetworkImage(url),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
