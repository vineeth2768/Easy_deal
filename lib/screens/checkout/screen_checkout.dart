import 'package:deal_easy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  static const String routeName = '/checkout';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const CheckoutScreen());
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController adderssController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController zipcodeController = TextEditingController();

    return Scaffold(
      appBar: const CustomAppBarWidget(title: "Checkout"),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  "ORDER NOW",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CUSTOMER INFORMATION",
                style: Theme.of(context).textTheme.headline3,
              ),
              _buildTextFormField(emailController, context, 'Email'),
              _buildTextFormField(nameController, context, 'Full Name'),
              Text(
                "DELIVERY INFORMATION",
                style: Theme.of(context).textTheme.headline3,
              ),
              _buildTextFormField(adderssController, context, 'Adderss'),
              _buildTextFormField(cityController, context, 'City'),
              _buildTextFormField(countryController, context, 'Country'),
              _buildTextFormField(zipcodeController, context, 'Zip Code'),
              Text(
                "ORDER SUMMERY",
                style: Theme.of(context).textTheme.headline3,
              ),
              const OrderSummary(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildTextFormField(
    TextEditingController controller,
    BuildContext context,
    String labalText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 75,
            child: Text(
              labalText,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
              child: TextField(
            controller: controller,
            decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 10),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                ))),
          ))
        ],
      ),
    );
  }
}
