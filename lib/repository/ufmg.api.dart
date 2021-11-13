import 'package:probabilidades_brasileirao/model/menu/menu.dart';
import 'package:probabilidades_brasileirao/utils/list_container.dart';
import 'package:web_scraper/web_scraper.dart';

class UfmgApi {

  static const htmlSelector = 'table#tabelaCL > tbody > tr > td';

  final WebScraper webScraper;

  UfmgApi(this.webScraper);

  Future<ListContainer<String>> getValues(Menu itemMenu) async {
    if (await webScraper.loadWebPage(itemMenu.pageUrl!)) {
      return ListContainer(webScraper.getElementTitle(htmlSelector));
    }

    return ListContainer.empty();
  }
}