import 'package:probabilidades_brasileirao/model/menu/menu.dart';
import 'package:probabilidades_brasileirao/model/result_item.dart';
import 'package:probabilidades_brasileirao/repository/ufmg.api.dart';
import 'package:web_scraper/web_scraper.dart';

class FetchDataService {
  static const urlUfmg = 'https://www.mat.ufmg.br';

  static final webScraper = WebScraper(urlUfmg);
  static final UfmgApi ufmgApi = UfmgApi(webScraper);

  Future<List<ResultItem>> getResults(Menu itemMenu) async {
    try {
      var values = await ufmgApi.getValues(itemMenu);
      var partitionedValues = values.partition(itemMenu.headers.length);
      var resultItens = partitionedValues
        .map((columns) => itemMenu.getResultItem(columns))
        .toList();

      return resultItens;
    } catch (error) {
      return Future.error('Ocorreu um erro ao tentar recuperar as probabilidades!');
    }
  }
}