import 'package:probabilidades_brasileirao/model/menu/header_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/item_menu.dart';
import 'package:probabilidades_brasileirao/model/menu/menu.dart';

class MenuSerieA {

  static List<String> headersByTeam = ['N', 'Time', 'Prob (%)'];
  static List<String> headersByScore = ['Pontos', 'Prob (%)'];

  static HeaderMenu probabilidadesTime = HeaderMenu('Probabilidades por Time');
  static HeaderMenu probabilidadesPontuacao = HeaderMenu('Probabilidades por Pontuação');
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