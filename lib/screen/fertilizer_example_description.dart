// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';

class FertilizerExampleDescription extends StatelessWidget {
  const FertilizerExampleDescription(
      {Key? key, required this.title, this.id = -1})
      : super(key: key);

  final String title;
  final int id;

  @override
  Widget build(BuildContext context) {
     String text = widget.id == 6
        ? "Being a deep-rooted crop, it can tolerate to drought. But in case of prolonged drought there is need of three irrigation. 1st at branching stage (30 DAS) 2nd one in flowering stage (70 DAS) and 3rd at the time of podding stage (110 DAS). DAS = Days after sowing] A pre-requisite for the success of pigeonpea is proper drainage. Ridge planting is effective in areas where sub-surface drainage is poor. Th is provide enough aeration for the roots during the period of excess rainfall."
        : widget.id == 9
            ? "Irrigate copiously immediately after planting and on the third day and once in 10 days afterwards till the graft establishes"
            : widget.id == 11
                ? "Newly planted grafts be irrigated at 3-4 days interval for 6 months, thereafter interval should be 8 10 days depending upon climate Irrigation interval of 10-15 days is adequate for 1-5 year old plants. For bearing trees, irrigation should not be given prior to flowering for 2-3 months as it promotes vegetative growth and reduces the crop. When the fruits have developed to the size of a marble, irrigation can be started and continued at weekly or fortnightly intervals. This helps to reduce fruit drop, promotes rapid fruit development, early maturity and improves quality. However, mango is mostly grown as rainfed crop."
                : widget.id == 12
                    ? "For Kharif Maize, irrigation at early knee-high, tasselling and 50% silking stages are to be given. For rabi Maize, first irrigation is to be applied 3-4 weak after seedling emergence, subsequently at 4-5 weeks till March and thereafter at 1-2 weeks interval."
                    : widget.id == 13
                        ? "Irrigate copiously after planting. After establishment of the crop, irrigation is given at 7 10 days interval. Water stagnation should be avoided. 20 30 liter water per plant through drip irrigation can be expected higher yields."
                        : widget.id == 15
                            ? "Regulate irrigation according to the following growth phase of the crop.Pre - flowering phase I to 25 days Flowering phase 26 to 60 days Maturity phase: 61 to 105 days Regulate irrigation based on physiological growth phases.Pegging , flowering and pod development phases are critical for irrigation during which period adequate soil moisture is essential. Apply irrigation as follows a. Sowing or pre-sowing. b.Life irrigation, 4 5 days after sowing if sowing irrigation given to break the surface crust. C.20 days after sowing. d.At flowering give two irrigation. e. At pegging stage give one or two irrigation. In pod development stage, 2 3 irrigations depending on the soil type."
                            : widget.id == 17
                                ? "Irrigation practices vary considerably in different regions of India depending upon the rainfall pattern, time of pruning, different growth stages, water-holding capacity of soil, variety grown, training system followed and spacing of vines. Irrigation is provided once in every three days in newly planted vineyards by allowing water into a small circular basin of 50 cm. radius. With the increase in growth rate the size of the basin increases to a radius of 2m. In case of drip irrigation, only one emitter is placed at the base of the vine. The number of emitters gradually increases to two and then four which are shifted about 30 or 40cm. away from the stem depending upon the variety and spacing of the vines. Heavy irrigation is provided soon after pruning  in order to wet the entire root zone thoroughly and induce active growth in the vine. Light irrigation of 50-75mm. (5.0-7.5 L./ha.) is given is given at an interval of 10-12 days during winter and 5-7 days in summers."
                                : "";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kGreenColorShade,
      ),
      body: id == -1
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0),
                    child: Text(
                      "Information will be updated soon...",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [],
            ),
    );
  }
}
