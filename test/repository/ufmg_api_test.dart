import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:probabilidades_brasileirao/model/menu/item_menu.dart';
import 'package:probabilidades_brasileirao/repository/ufmg.api.dart';

import '../infra/mocks/web_scraper.mock.dart';

void main() {

  final mockWebScraper = WebScraperMock();
  late UfmgApi fixture;

  final campeaoSerieA = ItemMenu(
      'Campeão',
      '/futebol/campeao_seriea',
      ['N', 'Time', 'Prob (%)']
  );

  setUp(() {
    fixture = UfmgApi(mockWebScraper);
  });

  test('deve recuperar os dados corretamente', () async {
    // Arrange
    when(() => mockWebScraper.loadWebPage(campeaoSerieA.pageUrl!))
        .thenAnswer((_) async => true);

    when(() => mockWebScraper.getElementTitle(UfmgApi.htmlSelector))
        .thenAnswer((_) => ['a']);

    // Act
    var actual = await fixture.getValues(campeaoSerieA);

    // Assert
    expect(actual.size(), equals(1));
    expect(actual.values, contains('a'));
  });

  test('deve retornar vazio caso não consiga carregar a página', () async {
    // Arrange
    when(() => mockWebScraper.loadWebPage(campeaoSerieA.pageUrl!))
        .thenAnswer((_) async => false);

    // Act
    var actual = await fixture.getValues(campeaoSerieA);

    // Assert
    expect(actual, isNotNull);
    expect(actual.size(), 0);
  });

  test('deve retornar vazio caso nenhum elemento seja encontrado na página', () async {
    // Arrange
    when(() => mockWebScraper.loadWebPage(campeaoSerieA.pageUrl!))
        .thenAnswer((_) async => true);

    when(() => mockWebScraper.getElementTitle(UfmgApi.htmlSelector))
        .thenAnswer((_) => []);

    // Act
    var actual = await fixture.getValues(campeaoSerieA);

    // Assert
    expect(actual, isNotNull);
    expect(actual.size(), 0);
  });
}