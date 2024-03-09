import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: JobApplicationPage(),
  ));
}

class JobApplicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Application'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(width: 8.0),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text('Country', textAlign: TextAlign.right),
                SizedBox(width: 8.0),
                DropdownButton<String>(
                  items: <String>['USA', 'Canada', 'UK', 'Australia']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                  value: 'USA', // Default value
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Message'),
              maxLines: 3,
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement upload functionality
                  },
                  icon: Icon(Icons.cloud_upload),
                  label: Text('Upload CV'),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement apply now functionality
                  },
                  child: Text('Apply Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
