import 'package:flutter_test/flutter_test.dart';
import 'package:probabilidades_brasileirao/utils/list_container.dart';

void main() {

  test('deve particionar corretamente quando houver elementos', () async {
    // Arrange
    const mock = ['a', 'b', 'c', 'd'];
    var fixture = ListContainer(mock);

    // Act
    var actual = fixture.partition(2);

    // Assert
    expect(actual[0], containsAllInOrder(['a', 'b']));
    expect(actual[1], containsAllInOrder(['c', 'd']));
  });

  test('não deve particionar quando for vazio', () async {
    // Arrange
    var fixture = ListContainer([]);

    // Act
    var actual = fixture.partition(2);

    // Assert
    expect(actual, isEmpty);
  });

  test('deve comparar 2 listas vazias como iguais', () async {
    // Arrange
    var fixture = ListContainer([]);

    // Act
    var actual = fixture == ListContainer.empty();

    // Assert
    expect(actual, true);
  });

  test('deve retornar o tamanho da lista corretamente', () async {
    // Arrange
    var fixture = ListContainer(['a', 'b', 'c']);

    // Act
    var actual = fixture.size();

    // Assert
    expect(actual, 3);
  });
}