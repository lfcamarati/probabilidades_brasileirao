import 'package:probabilidades_brasileirao/model/menu/full_scrollable_item_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/header_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/item_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/menu.dart';

class MenuSerieB {

  static List<String> headersByTeam = ['N', 'Time', 'Prob (%)'];
  static List<String> headersByScore = ['Pontos', 'Prob (%)'];
  static List<String> headersByClassification =
    ['N', 'Times', 'PG', 'J', 'V', 'E', 'D', 'GF', 'GC', 'S', 'R'];

  static HeaderMenu probabilidadesTime = HeaderMenu('Probabilidades por Time');
  static HeaderMenu probabilidadesPontuacao = HeaderMenu('Probabilidades por Pontuação');
  static HeaderMenu classificacao = HeaderMenu('Classificação');
  static HeaderMenu estatisticas = HeaderMenu('Estatísticas');

  static List<Menu> getMenu() {
    return [
      probabilidadesTime,

      ItemMenu(
        'Campeão',
        '/futebol/campeao-serie-b',
        headersByTeam
      ),
      ItemMenu(
        'Classificação para primeira divisão',
        '/futebol/classificacao-para-primeira-divisao',
        headersByTeam
      ),
      ItemMenu(
        'Rebaixamento',
        '/futebol/rebaixamento-serie-b',
        headersByTeam
      ),

      probabilidadesPontuacao,

      ItemMenu(
        'Campeão',
        '/futebol/campeao-por-pontuacao-serie-b',
        headersByScore
      ),
      ItemMenu(
        'Classificação para primeira divisão',
        '/futebol/classificacao-para-primeira-divisao-serie-b',
        headersByScore
      ),
      ItemMenu(
        'Rebaixamento',
        '/futebol/rebaixamento-por-pontuacao-serie-b',
        headersByScore
      ),

      classificacao,

      FullScrollableItemMenu(
        'Classificação geral',
        '/futebol/classificacao-geral-serie-b',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação das últimas 10 rodadas',
        '/futebol/classificacao-das-ultimas-10-rodadas-serie-b',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação como mandante',
        '/futebol/classificacao-como-mandante-serie-b',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação como visitante',
        '/futebol/classificacao-como-visitante-serie-b',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação do turno',
        '/futebol/classificacao-do-turno-serie-b',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação do returno',
        '/futebol/classificacao-do-returno-serie-b',
        headersByClassification
      ),

      estatisticas,

      ItemMenu(
        'Sequência de vitórias',
        '/futebol/sequencia-de-vitorias-serie-b',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Sequência de derrotas',
        '/futebol/sequencia-de-derrotas-serie-b',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Sequência de invencibilidade',
        '/futebol/sequencia-de-invencibilidade-serie-b',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Sequência sem vitórias',
        '/futebol/sequencia-sem-vitorias-serie-b',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Melhor ataque',
        '/futebol/melhor-ataque-serie-b',
        ['N', 'Times', 'Gols marcados']
      ),
      ItemMenu(
        'Melhor defesa',
        '/futebol/melhor-defesa-serie-b',
        ['N', 'Times', 'Gols sofridos']
      ),
    ];
  }
}