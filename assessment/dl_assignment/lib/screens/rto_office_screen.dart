import 'package:dl_assignment/constant/app_colors.dart';
import 'package:dl_assignment/jsondata/load_json_data.dart';
import 'package:flutter/material.dart';

class RTOOfficeScreen extends StatefulWidget {
  const RTOOfficeScreen({super.key});

  @override
  State<RTOOfficeScreen> createState() => _RTOOfficeScreenState();
}

class _RTOOfficeScreenState extends State<RTOOfficeScreen> {
  final TextEditingController _cityCodeController = TextEditingController();

  List<Map<String, dynamic>> _states = [];
  List<Map<String, dynamic>> _selectedState = [];

  @override
  void initState() {
    super.initState();
    loadStates().then((states) {
      setState(() {
        _states = states;
      });
    });
  }

  void _onDropdownChanged(String selectedStateName) {
    setState(() {
      _selectedState = _states.firstWhere(
          (state) => state['name'] == selectedStateName,
          orElse: () => {})['information'];
    });
  }

  void _onCityCodeChanged(String cityCode) {
    List<Map<String, dynamic>> filteredState = [];
    String lowercaseCityCode = cityCode.toLowerCase();

    if (_selectedState.isNotEmpty) {
      filteredState = _selectedState
          .where((info) => info['cityCode'].toLowerCase() == lowercaseCityCode)
          .toList();
    }

    if (filteredState.isNotEmpty) {
      setState(() {
        _selectedState = filteredState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        title: const Text("RTO/ARTO Offices"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: _buildMain(),
    );
  }

  Widget _buildMain() {
    return _states.isEmpty
        ? Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      labelText: 'Select State',
                      labelStyle: const TextStyle(color: Colors.black),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                    ),
                    items: _states.map<DropdownMenuItem<String>>((state) {
                      return DropdownMenuItem<String>(
                        value: state['name'],
                        child: Text(state['name']),
                      );
                    }).toList(),
                    onChanged: (value) {
                      _onDropdownChanged(value.toString());
                    },
                    isExpanded: true,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _cityCodeController,
                    onChanged: _onCityCodeChanged,
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      labelText: 'Enter state',
                      isDense: true,
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (_selectedState.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var info in _selectedState)
                          Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: AppColors.primaryColor,
                                        ),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          '${info['cityCode']}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        '${info['cityName']}',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location,
                                        color: AppColors.primaryColor,
                                      ),
                                      const SizedBox(width: 10),
                                      Text('${info['address']}'),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.link,
                                        color: AppColors.primaryColor,
                                      ),
                                      const SizedBox(width: 10),
                                      Text('${info['url']}'),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: AppColors.primaryColor,
                                      ),
                                      const SizedBox(width: 4),
                                      Text('${info['phone']}'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          );
  }
}
