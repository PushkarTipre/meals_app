import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';
import 'package:meals_app/widgets/main_drawer.dart';

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class Filters_Screen extends StatefulWidget {
  const Filters_Screen({super.key, required this.currentFilters});
  final Map<Filter, bool> currentFilters;
  @override
  State<Filters_Screen> createState() => _Filters_ScreenState();
}

class _Filters_ScreenState extends State<Filters_Screen> {
  var _glutenFreeFliterSet = false;
  var _lactoseFreeFliterSet = false;
  var _vegetarianFliterSet = false;
  var _veganFliterSet = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _glutenFreeFliterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFliterSet = widget.currentFilters[Filter.lactoseFree]!;
    _veganFliterSet = widget.currentFilters[Filter.vegan]!;
    _vegetarianFliterSet = widget.currentFilters[Filter.vegetarian]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Main_Drawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(builder: (builder) => Tabs_Screen()));
      //   }
      // }),
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: PopScope(
        onPopInvoked: (bool didPop) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFliterSet,
            Filter.lactoseFree: _lactoseFreeFliterSet,
            Filter.vegan: _veganFliterSet,
            Filter.vegetarian: _vegetarianFliterSet
          });
        },
        canPop: false,
        child: Column(
          children: [
            SwitchListTile(
              value: _glutenFreeFliterSet,
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFliterSet = isChecked;
                });
              },
              title: Text(
                'Gluten Free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include gluten free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34.0, right: 22.0),
            ),
            SwitchListTile(
              value: _lactoseFreeFliterSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFliterSet = isChecked;
                });
              },
              title: Text(
                'Lactose Free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include lactose free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34.0, right: 22.0),
            ),
            SwitchListTile(
              value: _vegetarianFliterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFliterSet = isChecked;
                });
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include vegetarian meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34.0, right: 22.0),
            ),
            SwitchListTile(
              value: _veganFliterSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganFliterSet = isChecked;
                });
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include vegan meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34.0, right: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}
