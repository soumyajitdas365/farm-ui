
import 'package:farm_ui/Components/plan_containers.dart';
import 'package:farm_ui/Screens/PaymentFlow/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdvisoryPlan extends StatefulWidget {
  const AdvisoryPlan({super.key});

  @override
  State<AdvisoryPlan> createState() => _AdvisoryPlanState();
}

class _AdvisoryPlanState extends State<AdvisoryPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advisory Plan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            PlanContainer(
              title: "Plan 1",
              subtitle: "₹50/5 Question",
              onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                );
              },
              titleFontSize: 12,
              subtitleFontSize: 16,
            ),
            Gap(12),
            PlanContainer(
              title: "Plan 2",
              subtitle: "₹150/10 Question",
              onTap: () {},
              titleFontSize: 12,
              subtitleFontSize: 16,
            ),
            Gap(12),
            PlanContainer(
              title: "Plan 3",
              subtitle: "₹200/25 Question",
              onTap: () {},
              titleFontSize: 12,
              subtitleFontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
