import 'package:probabilidades_brasileirao/model/menu/header_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/item_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/menu.dart';
import 'package:probabilidades_brasileirao/model/menu/full_scrollable_item_menu.dart';

class MenuSerieA {

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
        '/futebol/campeao_seriea',
        headersByTeam
      ),
      ItemMenu(
        'Classificação para Libertadores',
        '/futebol/classificacao-para-libertadores_seriea',
        headersByTeam
      ),
      ItemMenu(
        'Classificação para a Sulamericana',
        '/futebol/classificacao-para-sulamericana_seriea',
        headersByTeam
      ),
      ItemMenu(
          'Rebaixamento',
          '/futebol/rebaixamento_seriea',
          headersByTeam
      ),

      probabilidadesPontuacao,

      ItemMenu(
        'Campeão',
        '/futebol/campeaopont_seriea',
        headersByScore
      ),
      ItemMenu(
        'Classificação para Libertadores',
        '/futebol/classificacao-para-libertadores_pontseriea',
        headersByScore
      ),
      ItemMenu(
        'Classificação para a Sulamericana',
        '/futebol/classificacao-para-sulamericana_pontseriea',
        headersByScore
      ),
      ItemMenu(
        'Rebaixamento',
        '/futebol/rebaixamento_pontseriea',
        headersByScore
      ),

      classificacao,

      FullScrollableItemMenu(
        'Classificação geral',
        '/futebol/classificacao-geral_seriea',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação das últimas 10 rodadas',
        '/futebol/classificacao-das-ultimas-10-rodadas_seriea',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação como mandante',
        '/futebol/classificacao-como-mandante_seriea',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação como visitante',
        '/futebol/classificacao-como-visitante_seriea',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação do turno',
        '/futebol/classificacao-do-turno_seriea',
        headersByClassification
      ),

      FullScrollableItemMenu(
        'Classificação do returno',
        '/futebol/classificacao-do-returno_seriea',
        headersByClassification
      ),

      estatisticas,

      ItemMenu(
        'Sequência de vitórias',
        '/futebol/sequencia-de-vitorias_seriea',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Sequência de derrotas',
        '/futebol/sequencia-de-derrotas_seriea',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Sequência de invencibilidade',
        '/futebol/sequencia-de-invencibilidade_seriea',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Sequência sem vitórias',
        '/futebol/sequencia-sem-vitorias_seriea',
        ['N', 'Times', 'Partidas']
      ),
      ItemMenu(
        'Melhor ataque',
        '/futebol/melhor-ataque_seriea',
        ['N', 'Times', 'Gols marcados']
      ),
      ItemMenu(
        'Melhor defesa',
        '/futebol/melhor-defesa_seriea',
        ['N', 'Times', 'Gols sofridos']
      ),
    ];
  }
}