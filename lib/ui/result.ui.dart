import 'package:flutter/material.dart';
import 'package:probabilidades_brasileirao/model/menu/full_scrollable_item_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/item_menu.dart';
import 'package:probabilidades_brasileirao/model/result_item.dart';

class ResultUI extends StatefulWidget {
  final ItemMenu itemMenu;
  final List<ResultItem> result;

  const ResultUI(this.itemMenu, this.result, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ResultUIState();
}

class _ResultUIState extends State<ResultUI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.itemMenu.name),
        ),
        body: createContainerByColumnsSize(widget.itemMenu, widget.result)
    );
  }

  createContainerByColumnsSize(ItemMenu itemMenu, List<ResultItem> result) {
    if (itemMenu is FullScrollableItemMenu) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            child: createDataTable(itemMenu, result),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: createDataTable(itemMenu, result),
      ),
    );
  }

  DataTable createDataTable(ItemMenu itemMenu, List<ResultItem> result) {
    return DataTable(
      columns: createColumns(itemMenu),
      rows: createRows(result, itemMenu)
    );
  }

  createColumns(ItemMenu itemMenu) {
    var columns = <DataColumn>[];
    var headers = itemMenu.headers;
    
    for (var i = 0; i < headers.length; i++) {
      columns.add(DataColumn(label: Text(headers[i])));
    }

    return columns;
  }

  createRows(List<ResultItem> result, ItemMenu itemMenu) {
    var rows = <DataRow>[];
    var headerSize = itemMenu.headers.length;

    for (var item in result) {
      rows.add(DataRow(cells: createCells(item, headerSize)));
    }

    return rows;
  }

  createCells(ResultItem item, int headerSize) {
    var cells = <DataCell>[];
    var values = item.values;

    for (int i = 0; i < headerSize; i++) {
      cells.add(DataCell(Text(values[i])));
    }

    return cells;
  }
}
