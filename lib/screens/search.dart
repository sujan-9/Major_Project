import 'package:flutter/material.dart';

//import '../Models/product.dart';

class CustomSearchDelegate extends SearchDelegate {
  
// Demo list to show querying
List<String> searchTerms = [
	"Iphone7pplus",
	"Iphone8",
	"Iphone9",
	"Iphonex",
	"Iphone11",
	"Iphone12",
	"Samsung",
	"SamsungGalaxy",
  "SamsungNote",
  "SamsungS20",
  "SamsungS21"
  "SamsungS21",
  

];


	
// first overwrite to
// clear the search text

@override
List<Widget>? buildActions(BuildContext context) {
	return [
	IconButton(
		onPressed: () {
		query = '';
		},
		icon: Icon(Icons.clear),
	),
	];
}

// second overwrite to pop out of search menu
@override
Widget? buildLeading(BuildContext context) {
	return IconButton(
	onPressed: () {
		close(context, null);
	},
	icon: Icon(Icons.arrow_back),
	);
}

// third overwrite to show query result
@override
Widget buildResults(BuildContext context) {
	List<String> matchQuery = [];
	for (var fruit in searchTerms) {
	if (fruit.toLowerCase().contains(query.toLowerCase())) {
		matchQuery.add(fruit);
	}
	}
	return ListView.builder(
	itemCount: matchQuery.length,
	itemBuilder: (context, index) {
		var result = matchQuery[index];
		return ListTile(
		title: Text(result),
    leading: Icon(Icons.phone_android_rounded),
    subtitle: Text("Rs 50,000"),
		);
	},
	);
}
@override
Widget buildesults(BuildContext context) {
	List<String> matchQuery = [];
	for (var fruit in searchTerms) {
	if (fruit.toLowerCase().contains(query.toLowerCase())) {
		matchQuery.add(fruit);
	}
	}
	return ListView.builder(
	itemCount: matchQuery.length,
	itemBuilder: (context, index) {
		var result = matchQuery[index];
		return ListTile(
		title: Text(result),
		);
	},
	);
}

// last overwrite to show the
// querying process at the runtime
 @override
Widget buildSuggestions(BuildContext context) {
	List<String> matchQuery = [];
	for (var fruit in searchTerms) {
	if (fruit.toLowerCase().contains(query.toLowerCase())) {
		matchQuery.add(fruit);
	}
	}
	return ListView.builder(
	itemCount: matchQuery.length,
	itemBuilder: (context, index) {
		var result = matchQuery[index];
		return ListTile(
		title: Text(result,),
		);
	},
	);
}

}
