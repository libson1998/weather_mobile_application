import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:weather_application/common_widgets/custom_sizedbox.dart';
import 'package:weather_application/common_widgets/form_widget.dart';
import 'package:weather_application/common_widgets/list_view_widget.dart';
import 'package:weather_application/controller/weather_provider.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/theme/theme.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({super.key});

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: 20,
        leading: const CustomSizedBox(),
      ),
      body: SafeArea(child: Consumer<WeatherDataProvider>(
        builder: (context, weatherProvider, child) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: FormFieldWidget(
                          enabled: true,
                          passwordObscure: false,
                          isIconVisible: true,
                          onSave: (newValue) {
                            weatherProvider.searchLocation = newValue!;
                          },
                          onChange: (value) {
                            weatherProvider.searchLocation = value;
                            weatherProvider.searchWeatherLocation(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This field cannot be empty";
                            } else if (value.length > 9) {
                              return "Please enter a valid mobile number";
                            }
                            return null;
                          },
                          hintText: "Search",
                          controller: weatherProvider.textEditingController,
                          // Make sure this is set
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffFDFCFC), width: 1),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffFDFCFC), width: 1),
                              borderRadius: BorderRadius.circular(8)),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffFDFCFC), width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              "assets/icons/search.svg",
                              color: blackColor,
                            ),
                          ),
                          errorBorder: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          fillColor: Colors.grey.withOpacity(0.2),
                          keyboardType: TextInputType.text,
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14,
                              color: const Color(0xff80000000),
                              fontWeight: FontWeight.w500),
                          labelStyle: GoogleFonts.inter(
                              fontSize: 14, color: blackColor),
                          child: InkWell(
                              onTap: () {}, child: const CustomSizedBox()),
                        ),
                      ),
                    ),
                    const CustomSizedBox(width: 12),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close))
                  ],
                ),
                weatherProvider.searchCityResponse != null
                    ? Expanded(
                      child: ListViewWidget(
                          itemCount: weatherProvider
                              .searchCityResponse!.predictions!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(weatherProvider.searchCityResponse!
                                  .predictions![index].description
                                  .toString()),
                              onTap: () {
                                weatherProvider.fetchCoordinates(weatherProvider
                                    .searchCityResponse!
                                    .predictions![index]
                                    .structuredFormatting!
                                    .mainText
                                    .toString());
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                    )
                    : const CustomSizedBox()
              ],
            ),
          );
        },
      )),
    );
  }
}
