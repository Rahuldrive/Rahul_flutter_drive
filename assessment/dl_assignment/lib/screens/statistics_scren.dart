import 'package:dl_assignment/constant/app_colors.dart';
import 'package:dl_assignment/jsondata/load_json_data.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  List<Map<String, dynamic>> vehicleState = [];

  @override
  void initState() {
    super.initState();
    vehicleDataJson().then((states) {
      setState(() {
        vehicleState = states;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Statistics"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: _buildMain(),
    );
  }

  Widget _buildMain() {
    return vehicleState.isEmpty
        ? Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          )
        : Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 4),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vehicle Populations",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(color: AppColors.primaryColor,thickness: 1),
                  const Text(
                    "Showing details of vehicle population as on for the year 2022 to 2023",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  _showData(),
                ],
              ),
          ),
        );
  }

  Widget _showData() {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: DataTable(
              showCheckboxColumn: false,
              columnSpacing: 4,
              horizontalMargin: 4,
              dividerThickness: 2,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey),
              ),
              dataRowColor: MaterialStateProperty.all(Colors.white),
              columns: const [
                DataColumn(
                  label: Text('SrNo'),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Year'),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Transport Vehicle'),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Non-Transport Vehicle'),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Total'),
                  numeric: true,
                ),
              ],
              rows: vehicleState
                  .map(
                    (data) => DataRow(
                      cells: [
                        DataCell(
                          Center(
                            child: Text(
                              data['srNo'].toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              data['year'].toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              data['transportVehicle'].toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              data['nonTransportVehicle'].toString(),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              (data['transportVehicle'] +
                                      data['nonTransportVehicle'])
                                  .toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
