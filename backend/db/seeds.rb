# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Random location inside Belo Horizonte
# top left -19.795591, -44.138610
# top right -19.795591, -43.822368
# bottom left -20.024594, -44.138610
# bottom right -20.024594, -43.822368
if Case.count.zero?
  Case.create(
    Array.new(10_000) do
      {
        lat: rand(-20.024594..-19.795591).floor(6),
        lng: rand(-44.138610..-43.822368).floor(6)
      }
    end
  )
end

if TestPlace.count.zero?
  TestPlace.create(
    [
      {
        lat: -19.465178,
        lng: -44.248041,
        name: 'ADOLPHO COTTA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/105.jpg'
      },
      {
        lat: -19.975345,
        lng: -43.937232,
        name: 'ALAMEDA DA SERRA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/109.jpg'
      },
      {
        lat: -19.8678628,
        lng: -43.9759594,
        name: 'ALFREDO CAMARATE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/134.jpg'
      },
      {
        lat: -19.930729,
        lng: -43.931651,
        name: 'ALFREDO NORONHA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/170.jpg'
      },
      {
        lat: -19.901703,
        lng: -44.004099,
        name: 'ALÍPIO DE MELO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/066.jpg'
      },
      {
        lat: -20.1622176,
        lng: -43.9549496,
        name: 'ALPHAVILLE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/219.jpg'
      },
      {
        lat: -21.776144,
        lng: -43.34597,
        name: 'ALTO DOS PASSOS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/234.jpg'
      },
      {
        lat: -19.8250882,
        lng: -43.9616161,
        name: 'ÁLVARO CAMARGOS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/191.jpg'
      },
      {
        lat: -19.929348,
        lng: -43.976573,
        name: 'AMAZONAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/065.jpg'
      },
      {
        lat: -19.896209,
        lng: -43.960712,
        name: 'AMÉRICO VESPÚCIO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/019.jpg'
      },
      {
        lat: -19.913451,
        lng: -43.907971,
        name: 'ANDRADAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/025.jpg'
      },
      {
        lat: -19.930197,
        lng: -43.943185,
        name: 'ANTÔNIO ARAUJO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/160.jpg'
      },
      {
        lat: -19.852098,
        lng: -43.962218,
        name: 'ANTÔNIO CARLOS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/026.jpg'
      },
      {
        lat: -19.935039,
        lng: -43.928977,
        name: 'AVENIDA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/007.jpg'
      },
      {
        lat: -19.953832,
        lng: -43.92739,
        name: 'BANDEIRANTES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/094.jpg'
      },
      {
        lat: -21.221444,
        lng: -43.776867,
        name: 'BARBACENA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/177.jpg'
      },
      {
        lat: -19.974526,
        lng: -44.015905,
        name: 'BARREIRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/012.jpg'
      },
      {
        lat: -21.7619768,
        lng: -43.346651,
        name: 'BATISTA DE OLIVEIRA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/228.jpg'
      },
      {
        lat: -20.397563,
        lng: -43.502545,
        name: 'BAUXITA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/203.jpg'
      },
      {
        lat: -19.974829,
        lng: -43.941745,
        name: 'BELVEDERE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/051.jpg'
      },
      {
        lat: -19.962354,
        lng: -43.990624,
        name: 'BETÂNIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/095.jpg'
      },
      {
        lat: -19.946433,
        lng: -44.188928,
        name: 'BETIM',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/049.jpg'
      },
      {
        lat: -19.926703,
        lng: -43.94289,
        name: 'BIAS FORTES II',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/212.jpg'
      },
      {
        lat: -19.920679,
        lng: -43.920421,
        name: 'BOULEVARD',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/102.jpg'
      },
      {
        lat: -19.9677225,
        lng: -43.9586878,
        name: 'Box Mr. V',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/998.jpg'
      },
      {
        lat: -19.92785,
        lng: -43.927667,
        name: 'BRASIL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/086.jpg'
      },
      {
        lat: -19.9711472,
        lng: -44.2050198,
        name: 'BRASILÉIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/192.jpg'
      },
      {
        lat: -19.89115,
        lng: -43.811678,
        name: 'BUENO BRANDÃO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/144.jpg'
      },
      {
        lat: -19.9160354,
        lng: -43.9401142,
        name: 'CAETÉS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/133.jpg'
      },
      {
        lat: -19.905034,
        lng: -43.971916,
        name: 'CAIÇARA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/156.jpg'
      },
      {
        lat: -19.947244,
        lng: -44.160457,
        name: 'CAMPO OURIQUE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/218.jpg'
      },
      {
        lat: -19.916845,
        lng: -43.928423,
        name: 'CARLOS MACIEL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/168.jpg'
      },
      {
        lat: -19.946438,
        lng: -43.934045,
        name: 'CARMO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/120.jpg'
      },
      {
        lat: -21.782925,
        lng: -43.365009,
        name: 'CASCATINHA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/225.jpg'
      },
      {
        lat: -19.924317,
        lng: -43.937352,
        name: 'CASSÃO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/005.jpg'
      },
      {
        lat: -19.89144,
        lng: -43.998626,
        name: 'CASTELO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/085.jpg'
      },
      {
        lat: -19.901337,
        lng: -44.049056,
        name: 'CEASA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/009.jpg'
      },
      {
        lat: -19.935697,
        lng: -43.931371,
        name: 'CENTENÁRIO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/070.jpg'
      },
      {
        lat: -19.958858,
        lng: -43.987894,
        name: 'CENTRAL PARK',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/145.jpg'
      },
      {
        lat: -19.798014,
        lng: -43.949648,
        name: 'CENTRO ADMINISTRATIVO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/098.jpg'
      },
      {
        lat: -19.965422,
        lng: -44.196483,
        name: 'CENTRO BETIM',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/080.jpg'
      },
      {
        lat: -19.9202044,
        lng: -43.9412013,
        name: 'CENTRO BH',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/226.jpg'
      },
      {
        lat: -20.021583,
        lng: -44.058551,
        name: 'CENTRO IBIRITÉ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/185.jpg'
      },
      {
        lat: -19.46442,
        lng: -44.240712,
        name: 'CENTRO MÉDICO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/126.jpg'
      },
      {
        lat: -19.8223243,
        lng: -43.9965825,
        name: 'CÉU AZUL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/186.jpg'
      },
      {
        lat: -19.925337,
        lng: -43.998549,
        name: 'CÍCERO IDELFONSO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/206.jpg'
      },
      {
        lat: -19.890473,
        lng: -43.927568,
        name: 'CIDADE NOVA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/020.jpg'
      },
      {
        lat: -19.952499,
        lng: -43.937955,
        name: 'COLÔMBIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/118.jpg'
      },
      {
        lat: -19.7695979,
        lng: -43.8741387,
        name: 'COMÉRCIO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/190.jpg'
      },
      {
        lat: -19.90585,
        lng: -43.924308,
        name: 'CONSELHEIRO LAFAIETE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/074.jpg'
      },
      {
        lat: -19.911532,
        lng: -44.082656,
        name: 'CONTAGEM',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/106.jpg'
      },
      {
        lat: -19.940046,
        lng: -43.939312,
        name: 'CONTORNO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/046.jpg'
      },
      {
        lat: -19.926367,
        lng: -43.989392,
        name: 'CORAÇÃO EUCARÍSTICO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/057.jpg'
      },
      {
        lat: -19.842578,
        lng: -43.9484489,
        name: 'CRISTIANO GUIMARAES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/247.jpg'
      },
      {
        lat: -19.886799,
        lng: -43.928636,
        name: 'CRISTIANO MACHADO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/117.jpg'
      },
      {
        lat: -19.928726,
        lng: -43.966033,
        name: 'CUIABA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/232.jpg'
      },
      {
        lat: -18.750782,
        lng: -44.428499,
        name: 'CURVELO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/199.jpg'
      },
      {
        lat: -19.890023,
        lng: -43.968033,
        name: 'DEL REY',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/115.jpg'
      },
      {
        lat: -19.88491,
        lng: -44.030406,
        name: 'DIAMANTE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/112.jpg'
      },
      {
        lat: -19.928535,
        lng: -43.947108,
        name: 'DIAMOND MALL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/034.jpg'
      },
      {
        lat: -20.143775,
        lng: -44.887431,
        name: 'DIVINÓPOLIS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/210.jpg'
      },
      {
        lat: -19.96866,
        lng: -43.981339,
        name: 'DOM JOÃO VI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/179.jpg'
      },
      {
        lat: -19.975703,
        lng: -44.066018,
        name: 'DUVAL DE BARROS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/174.jpg'
      },
      {
        lat: -19.938992,
        lng: -44.046963,
        name: 'ELDORADO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/014.jpg'
      },
      {
        lat: -19.918548,
        lng: -43.936994,
        name: 'ESPÍRITO SANTO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/027.jpg'
      },
      {
        lat: -19.968265,
        lng: -43.964612,
        name: 'ESTORIL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/059.jpg'
      },
      {
        lat: -19.939109,
        lng: -43.941684,
        name: 'EXCELSIOR',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/075.jpg'
      },
      {
        lat: -19.9243755,
        lng: -43.931674,
        name: 'EZEQUIEL DIAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/123.jpg'
      },
      {
        lat: -19.911815,
        lng: -43.928928,
        name: 'FLORESTA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/157.jpg'
      },
      {
        lat: -20.4634112,
        lng: -45.4301832,
        name: 'FORMIGA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/238.jpg'
      },
      {
        lat: -19.96735,
        lng: -44.199268000000004,
        name: 'FÓRUM BETIM',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/121.jpg'
      },
      {
        lat: -19.931415,
        lng: -43.959266,
        name: 'FRANCISCO SÁ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/202.jpg'
      },
      {
        lat: -21.7587585,
        lng: -43.3485433,
        name: 'GETÚLIO VARGAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/224.jpg'
      },
      {
        lat: -19.915316,
        lng: -44.082139,
        name: 'GIL DINIZ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/073.jpg'
      },
      {
        lat: -19.8716055,
        lng: -43.9261451,
        name: 'GLOBAL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/152.jpg'
      },
      {
        lat: -19.919953,
        lng: -43.951021,
        name: 'GOITACAZES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/124.jpg'
      },
      {
        lat: -19.945636,
        lng: -43.933544,
        name: 'GRÃO MOGOL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/187.jpg'
      },
      {
        lat: -19.947122,
        lng: -43.955204,
        name: 'GUAICUÍ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/068.jpg'
      },
      {
        lat: -19.837544,
        lng: -43.976438,
        name: 'GUARAPARI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/146.jpg'
      },
      {
        lat: -19.922289,
        lng: -43.957671,
        name: 'GUSTAVO AYALA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/100.jpg'
      },
      {
        lat: -19.932737,
        lng: -43.956736,
        name: 'GUTIERREZ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/016.jpg'
      },
      {
        lat: -21.7610967,
        lng: -43.3505969,
        name: 'HALFELD',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/201.jpg'
      },
      {
        lat: -19.846272,
        lng: -43.9380491,
        name: 'HELIÓPOLIS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/195.jpg'
      },
      {
        lat: -19.979995,
        lng: -44.006332,
        name: 'HOSPITAL BARREIRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/114.jpg'
      },
      {
        lat: -19.919202,
        lng: -43.941396,
        name: 'IBATÉ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/002.jpg'
      },
      {
        lat: -20.0187365,
        lng: -44.0665926,
        name: 'IBIRITÉ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/158.jpg'
      },
      {
        lat: -20.2511002,
        lng: -43.8037037,
        name: 'ITABIRITO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/214.jpg'
      },
      {
        lat: -19.842842,
        lng: -43.961777,
        name: 'ITAPUÃ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/153.jpg'
      },
      {
        lat: -19.863289,
        lng: -43.950253,
        name: 'IZABEL BUENO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/143.jpg'
      },
      {
        lat: -19.90495,
        lng: -43.932103,
        name: 'JACUÍ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/089.jpg'
      },
      {
        lat: -19.940208,
        lng: -43.977995,
        name: 'JARDIM AMÉRICA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/078.jpg'
      },
      {
        lat: -19.829384,
        lng: -43.988307,
        name: 'JARDIM LEBLON',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/229.jpg'
      },
      {
        lat: -19.969996,
        lng: -44.033659,
        name: 'JK',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/125.jpg'
      },
      {
        lat: -19.938442,
        lng: -44.048545,
        name: 'JOÃO CÉSAR',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/052.jpg'
      },
      {
        lat: -19.9305388,
        lng: -43.9379601,
        name: 'JOÃO PINHEIRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/223.jpg'
      },
      {
        lat: -19.8239197,
        lng: -43.9648813,
        name: 'JOÃO SAMAHA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/175.jpg'
      },
      {
        lat: -19.962977,
        lng: -43.949911,
        name: 'KEPLER',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/111.jpg'
      },
      {
        lat: -19.645562,
        lng: -43.904311,
        name: 'LAGOA SANTA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/087.jpg'
      },
      {
        lat: -21.2462034,
        lng: -45.0013296,
        name: 'LAVRAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/241.jpg'
      },
      {
        lat: -19.974594,
        lng: -43.944732,
        name: 'LEITURA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/088.jpg'
      },
      {
        lat: -19.934818,
        lng: -43.924979,
        name: 'LIFE CENTER',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/040.jpg'
      },
      {
        lat: -19.933342,
        lng: -43.945184,
        name: 'LOURDES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/031.jpg'
      },
      {
        lat: -19.9315271,
        lng: -43.9899217,
        name: 'Mangalarga Nacional',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/997.jpg'
      },
      {
        lat: -21.218512,
        lng: -43.773449,
        name: 'MANTIQUEIRA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/176.jpg'
      },
      {
        lat: -19.976082,
        lng: -43.970883,
        name: 'MÁRIO WERNECK',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/130.jpg'
      },
      {
        lat: -19.928314,
        lng: -43.951252,
        name: 'MATER DEI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/163.jpg'
      },
      {
        lat: -19.565064,
        lng: -44.078409,
        name: 'MATOZINHOS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/151.jpg'
      },
      {
        lat: -19.915577,
        lng: -43.940377,
        name: 'MATRIZ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/001.jpg'
      },
      {
        lat: -19.915661,
        lng: -43.943417,
        name: 'MAURÍCIO ARAUJO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/188.jpg'
      },
      {
        lat: -19.89102,
        lng: -43.928827,
        name: "MCDONALD'S",
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/041.jpg'
      },
      {
        lat: -19.922714,
        lng: -43.942467,
        name: 'MERCADO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/003.jpg'
      },
      {
        lat: -19.878133,
        lng: -43.996093,
        name: 'MIGUEL PERRELA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/138.jpg'
      },
      {
        lat: -21.73369,
        lng: -43.394657,
        name: 'MOINHO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/242.jpg'
      },
      {
        lat: -19.767239,
        lng: -44.086924,
        name: 'NEVES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/092.jpg'
      },
      {
        lat: -19.922102,
        lng: -43.915429,
        name: 'NIQUELINA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/060.jpg'
      },
      {
        lat: -19.456746,
        lng: -44.242778,
        name: 'NORTE SUL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/147.jpg'
      },
      {
        lat: -19.912601,
        lng: -43.929385,
        name: 'NOSSA SENHORA DAS DORES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/172.jpg'
      },
      {
        lat: -19.968459,
        lng: -44.19781,
        name: 'NOSSA SENHORA DO CARMO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/110.jpg'
      },
      {
        lat: -19.878791,
        lng: -44.986207,
        name: 'NOVA SERRANA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/189.jpg'
      },
      {
        lat: -19.932502,
        lng: -43.97763,
        name: 'NOVA SUíSSA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/183.jpg'
      },
      {
        lat: -19.6315927,
        lng: -43.8870893,
        name: 'OPEN MALL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/237.jpg'
      },
      {
        lat: -19.938705,
        lng: -43.920202,
        name: 'OURO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/048.jpg'
      },
      {
        lat: -19.871696,
        lng: -43.979249,
        name: 'OURO PRETO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/021.jpg'
      },
      {
        lat: -21.772137,
        lng: -43.353748,
        name: 'PADRE CAFÉ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/207.jpg'
      },
      {
        lat: -19.915008,
        lng: -43.973457,
        name: 'PADRE EUSTÁQUIO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/030.jpg'
      },
      {
        lat: -19.81213,
        lng: -43.96456,
        name: 'PADRE PEDRO PINTO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/077.jpg'
      },
      {
        lat: -19.8757777,
        lng: -43.9297894,
        name: 'PALMARES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/139.jpg'
      },
      {
        lat: -19.863936,
        lng: -44.605243,
        name: 'PARÁ DE MINAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/171.jpg'
      },
      {
        lat: -19.958421,
        lng: -43.938009,
        name: 'PATAGÔNIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/200.jpg'
      },
      {
        lat: -19.857399,
        lng: -44.037187,
        name: 'PEDRA AZUL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/211.jpg'
      },
      {
        lat: -19.910891,
        lng: -43.967738,
        name: 'PEDRO II',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/063.jpg'
      },
      {
        lat: -19.619907,
        lng: -44.042846,
        name: 'PEDRO LEOPOLDO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/127.jpg'
      },
      {
        lat: -20.1469186,
        lng: -44.8942908,
        name: 'PERNAMBUCO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/196.jpg'
      },
      {
        lat: -19.920912,
        lng: -43.924537,
        name: 'PERRELLA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/039.jpg'
      },
      {
        lat: -19.9294373,
        lng: -44.1177488,
        name: 'PETROLÂNDIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/131.jpg'
      },
      {
        lat: -19.930831,
        lng: -43.956729,
        name: 'PIO XII',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/216.jpg'
      },
      {
        lat: -19.835244,
        lng: -43.955286,
        name: 'PLANALTO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/050.jpg'
      },
      {
        lat: -19.967025,
        lng: -43.943865,
        name: 'PONTEIO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/204.jpg'
      },
      {
        lat: -19.999574,
        lng: -43.897327,
        name: 'PONTO VERDE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/055.jpg'
      },
      {
        lat: -19.907953,
        lng: -43.959698,
        name: 'PORTAL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/082.jpg'
      },
      {
        lat: -19.843362,
        lng: -43.971332,
        name: 'PORTUGAL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/064.jpg'
      },
      {
        lat: -19.94895,
        lng: -43.920538,
        name: 'PRAÇA DA BANDEIRA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/036.jpg'
      },
      {
        lat: -19.9956238,
        lng: -44.0054373,
        name: 'PRAÇA DA FEBEM',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/159.jpg'
      },
      {
        lat: -19.921559,
        lng: -43.960305,
        name: 'PRADO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/091.jpg'
      },
      {
        lat: -19.8781751,
        lng: -44.0212915,
        name: 'PRINCESA ISABEL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/240.jpg'
      },
      {
        lat: -19.926405,
        lng: -43.930851,
        name: 'PRONTO SOCORRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/122.jpg'
      },
      {
        lat: -19.944527,
        lng: -43.948981,
        name: 'PRUDENTE MORAIS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/013.jpg'
      },
      {
        lat: -20.659968,
        lng: -43.785138,
        name: 'QUELUZ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/184.jpg'
      },
      {
        lat: -19.87113159350769,
        lng: -43.981435703041086,
        name: 'RAIMUNDO ANDRADE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/169.jpg'
      },
      {
        lat: -19.961177,
        lng: -43.957425,
        name: 'RAJA DRIVE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/047.jpg'
      },
      {
        lat: -19.9187888,
        lng: -43.9871111,
        name: 'RESSACA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/222.jpg'
      },
      {
        lat: -19.965774,
        lng: -44.059023,
        name: 'RIACHO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/101.jpg'
      },
      {
        lat: -19.6285565,
        lng: -43.8888088,
        name: 'RIO BRANCO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/128.jpg'
      },
      {
        lat: -19.917379,
        lng: -43.938065,
        name: 'RIO DE JANEIRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/119.jpg'
      },
      {
        lat: -19.948226,
        lng: -44.0635673,
        name: 'RIO POTI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/243.jpg'
      },
      {
        lat: -19.976637,
        lng: -43.976611,
        name: 'RUBENS CAPORALI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/162.jpg'
      },
      {
        lat: -19.875718,
        lng: -43.905677,
        name: 'SABARÁ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/076.jpg'
      },
      {
        lat: -19.9049649,
        lng: -43.9163925,
        name: 'SAGRADA FAMÍLIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/244.jpg'
      },
      {
        lat: -21.769982,
        lng: -43.347253,
        name: 'SANTA CASA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/221.jpg'
      },
      {
        lat: -19.934964,
        lng: -43.947295,
        name: 'SANTA CATARINA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/164.jpg'
      },
      {
        lat: -19.983034,
        lng: -43.851522,
        name: 'SANTA CRUZ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/149.jpg'
      },
      {
        lat: -19.921871,
        lng: -43.920809,
        name: 'SANTA EFIGÊNIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/137.jpg'
      },
      {
        lat: -19.767094,
        lng: -43.865358,
        name: 'SANTA LUZIA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/081.jpg'
      },
      {
        lat: -19.8192363,
        lng: -43.9800674,
        name: 'SANTA MÔNICA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/084.jpg'
      },
      {
        lat: -19.854301,
        lng: -43.968054,
        name: 'SANTA ROSA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/165.jpg'
      },
      {
        lat: -19.916055,
        lng: -43.918867,
        name: 'SANTA TEREZA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/182.jpg'
      },
      {
        lat: -19.931174,
        lng: -43.953187,
        name: 'SANTO AGOSTINHO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/022.jpg'
      },
      {
        lat: -19.787053,
        lng: -43.927683,
        name: 'SÃO BENEDITO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/093.jpg'
      },
      {
        lat: -19.954179,
        lng: -43.949977,
        name: 'SÃO BENTO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/056.jpg'
      },
      {
        lat: -19.911761,
        lng: -43.922103,
        name: 'SÃO CAMILO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/090.jpg'
      },
      {
        lat: -19.8952382,
        lng: -43.9011359,
        name: 'SÃO GERALDO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/230.jpg'
      },
      {
        lat: -21.1309379,
        lng: -44.2566697,
        name: 'SÃO JOÃO DEL REI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/197.jpg'
      },
      {
        lat: -19.92479,
        lng: -43.926605,
        name: 'SÃO LUCAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/061.jpg'
      },
      {
        lat: -19.951234,
        lng: -43.937723,
        name: 'SÃO PEDRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/155.jpg'
      },
      {
        lat: -19.913443,
        lng: -43.992,
        name: 'SÃO VICENTE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/167.jpg'
      },
      {
        lat: -19.940163,
        lng: -43.934583,
        name: 'SAVASSI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/010.jpg'
      },
      {
        lat: -19.86099,
        lng: -43.944537,
        name: 'SEBASTIÃO DE BRITO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/142.jpg'
      },
      {
        lat: -19.986975,
        lng: -43.939366,
        name: 'SERENA MALL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/136.jpg'
      },
      {
        lat: -19.936791,
        lng: -43.938007,
        name: 'SERGIPE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/173.jpg'
      },
      {
        lat: -19.942785,
        lng: -43.921997,
        name: 'SERRA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/038.jpg'
      },
      {
        lat: -19.8896522,
        lng: -44.0123422,
        name: 'SERRANO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/140.jpg'
      },
      {
        lat: -19.798794,
        lng: -43.954571,
        name: 'SERRA VERDE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/113.jpg'
      },
      {
        lat: -19.951505,
        lng: -43.927812,
        name: 'SHOPPING ANCHIETA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/135.jpg'
      },
      {
        lat: -19.975252,
        lng: -43.943237,
        name: 'SHOPPING BELVEDERE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/072.jpg'
      },
      {
        lat: -19.918983,
        lng: -43.939591,
        name: 'SHOPPING CARIJÓS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/236.jpg'
      },
      {
        lat: -19.880551,
        lng: -44.03863,
        name: 'SHOPPING CONTAGEM',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/129.jpg'
      },
      {
        lat: -19.820613,
        lng: -43.946935,
        name: 'SHOPPING ESTAÇÃO BH',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/116.jpg'
      },
      {
        lat: -19.962522,
        lng: -44.160472,
        name: 'SHOPPING PARTAGE',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/251.jpg'
      },
      {
        lat: -19.473533,
        lng: -44.272133,
        name: 'SHOPPING SETE LAGOAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/103.jpg'
      },
      {
        lat: -19.9170659,
        lng: -43.9472207,
        name: 'SHOPPING TUPINAMBÁS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/193.jpg'
      },
      {
        lat: -19.934776,
        lng: -43.971524,
        name: 'SILVA LOBO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/161.jpg'
      },
      {
        lat: -19.911357,
        lng: -43.919325,
        name: 'SILVIANO BRANDÃO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/071.jpg'
      },
      {
        lat: -19.953091,
        lng: -43.931262,
        name: 'SION',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/018.jpg'
      },
      {
        lat: -19.884906,
        lng: -43.906189,
        name: 'SPASSO SHOPPING',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/108.jpg'
      },
      {
        lat: -20.062492,
        lng: -43.978849,
        name: 'STOP CENTER',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/054.jpg'
      },
      {
        lat: -19.929772,
        lng: -43.943621,
        name: 'SUPER NOSSO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/067.jpg'
      },
      {
        lat: -19.890136,
        lng: -43.992996,
        name: 'TANCREDO NEVES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/205.jpg'
      },
      {
        lat: -19.9350008,
        lng: -44.121909,
        name: 'TAPAJÓS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/178.jpg'
      },
      {
        lat: -20.658908,
        lng: -43.789773,
        name: 'TELÉSFORO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/181.jpg'
      },
      {
        lat: -19.922432,
        lng: -43.973912,
        name: 'TEREZA CRISTINA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/058.jpg'
      },
      {
        lat: -19.925213,
        lng: -43.946258,
        name: 'TIMBIRAS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/217.jpg'
      },
      {
        lat: -19.969282,
        lng: -44.034893,
        name: 'TIRADENTES',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/042.jpg'
      },
      {
        lat: -19.9950534,
        lng: -44.0473189,
        name: 'TIROL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/227.jpg'
      },
      {
        lat: -19.983227,
        lng: -43.946593,
        name: 'TREVO NOVA LIMA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/029.jpg'
      },
      {
        lat: -19.917029,
        lng: -43.941241,
        name: 'TUPINAMBÁS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/148.jpg'
      },
      {
        lat: -19.921475,
        lng: -43.940221,
        name: 'TUPIS',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/062.jpg'
      },
      {
        lat: -21.1205967,
        lng: -42.942532,
        name: 'UBÁ',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/235.jpg'
      },
      {
        lat: -19.884755,
        lng: -43.9229991,
        name: 'UNIÃO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/233.jpg'
      },
      {
        lat: -21.5661275,
        lng: -45.4371712,
        name: 'VARGINHA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/248.jpg'
      },
      {
        lat: -19.976892,
        lng: -44.024797,
        name: 'VAZ DE MELO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/107.jpg'
      },
      {
        lat: -19.815531,
        lng: -43.95741,
        name: 'VENDA NOVA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/015.jpg'
      },
      {
        lat: -19.7701828,
        lng: -44.1292355,
        name: 'VENEZA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/231.jpg'
      },
      {
        lat: -19.691923,
        lng: -43.920545,
        name: 'VESPASIANO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/096.jpg'
      },
      {
        lat: -19.840736,
        lng: -43.967055,
        name: 'VIA BRASIL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/043.jpg'
      },
      {
        lat: -19.989853,
        lng: -44.013659,
        name: 'VIA DO MINÉRIO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/104.jpg'
      },
      {
        lat: -20.7564713,
        lng: -42.8792638,
        name: 'VIÇOSA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/239.jpg'
      },
      {
        lat: -19.9148241,
        lng: -43.9806136,
        name: 'VILA RICA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/154.jpg'
      },
      {
        lat: -19.953987,
        lng: -44.195981,
        name: 'VILA SOLEIL',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/083.jpg'
      },
      {
        lat: -19.973821,
        lng: -44.016062,
        name: 'VISCONDE IBITURUNA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/069.jpg'
      },
      {
        lat: -19.947291,
        lng: -43.924678,
        name: 'VITÓRIO MARÇOLA',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/141.jpg'
      },
      {
        lat: -19.8462879,
        lng: -43.9300774,
        name: 'WALDOMIRO LOBO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/132.jpg'
      },
      {
        lat: -19.946234,
        lng: -44.02337,
        name: 'WALL MART',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/053.jpg'
      },
      {
        lat: -19.940168,
        lng: -43.967395,
        name: 'XAPURI',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/166.jpg'
      },
      {
        lat: -21.2238043,
        lng: -43.7731841,
        name: 'XV DE NOVEMBRO',
        image_url: 'https://s3-sa-east-1.amazonaws.com/araujo-app/loja/208.jpg'
      }
    ]
  )
end

if Product.count.zero?
  Product.create(
    [
      {
        store: 'Araujo',
        name: 'Álcool Gel Eico Antisséptico Neutro 120g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3932065-400-400/07898688240220.jpg?v=637211752915170000',
        status: 1,
        price: 8.95,
        url: 'https://www.araujo.com.br/alcool-gel-eico-antisseptico-neutro-120g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel Eico Antisséptico Neutro 800ml',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3932665-400-400/07898688240237.jpg?v=637218694222900000',
        status: 1,
        price: 29.9,
        url: 'https://www.araujo.com.br/alcool-gel-eico-antisseptico-neutro-800ml/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel Soft Hand Bio Soft Antisséptico Lemon Fresh 55g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3932452-400-400/07896115143915.jpg?v=637215186956370000',
        status: 1,
        price: 4.95,
        url: 'https://www.araujo.com.br/alcool-gel-soft-hand-bio-soft-antisseptico-lemon-fresh-55g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel My Health Antisséptico 50g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3932683-400-400/00000067703685.jpg?v=637218729124400000',
        status: 1,
        price: 4.95,
        url: 'https://www.araujo.com.br/alcool-gel-my-health-antisseptico-50g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel 70% Mió Antisséptico 50g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3913035-400-400/07896902216969.jpg?v=637050158996100000',
        status: 1,
        price: 3.95,
        url: 'https://www.araujo.com.br/alcool-gel-70--mio-antisseptico-50g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Asseptgel Anti-Séptico Higienizador de Mãos 420g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933143-400-400/07897534812673.jpg?v=637226379670970000',
        status: 1,
        price: 17.95,
        url: 'https://www.araujo.com.br/asseptgel-anti-septico-higienizador-de-maos-420g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Asseptgel Anti-Séptico Higienizador de Mãos 1kg',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933257-400-400/07897534819207.jpg?v=637227422330770000',
        status: 1,
        price: 33.95,
        url: 'https://www.araujo.com.br/asseptgel-anti-septico-higienizador-de-maos-1kg/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel 70% Mió Antisséptico 430g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3917557-400-400/07896902216952.jpg?v=637098580091700000',
        status: 1,
        price: 16.95,
        url: 'https://www.araujo.com.br/alcool-gel-70--mio-antisseptico-430g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Asseptgel Anti-Séptico Higienizador de Mãos 52g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/2773494-400-400/07897534803831img-imagem-id-53276.jpg?v=635445518062000000',
        status: 1,
        price: 4.95,
        url: 'https://www.araujo.com.br/asseptgel-anti-septico-higienizador-de-maos-52g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool em Gel 70% Ideal Antisséptico 440g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933285-400-400/07896679231295.jpg?v=637227509464930000',
        status: 1,
        price: 17.95,
        url: 'https://www.araujo.com.br/alcool-gel-70--ideal-antisseptico-440g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool em Gel 70% Nanovit 500ml',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933280-400-400/07898964222124.jpg?v=637227488956670000',
        status: 1,
        price: 19.95,
        url: 'https://www.araujo.com.br/alcool-em-gel-70--nanovit-500ml/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Soapelle Darrow Álcool Gel 70% Antisséptico 120g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934043-400-400/03282770144406.jpg?v=637237006483930000',
        status: 1,
        price: 8.95,
        url: 'https://www.araujo.com.br/soapelle-darrow-alcool-gel-70--antisseptico-120g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel 70% Pauher Clean Antisséptico Sem Perfume 100ml',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934002-400-400/07899947310357.jpg?v=637236955871800000',
        status: 1,
        price: 10.9,
        url: 'https://www.araujo.com.br/alcool-gel-70--pauher-clean-antisseptico-sem-perfume-100ml/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Sabonete Líquido Antisséptico Asseptgel Erva Doce 500ml',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934952-400-400/07897534810907.jpg?v=637245426568230000',
        status: 1,
        price: 11.29,
        url: 'https://www.araujo.com.br/sabonete-liquido-antisseptico-asseptgel-erva-doce-500ml/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel 70% Cleanner Antisséptico 5 Litros',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933380-400-400/07898393009266.jpg?v=637229980171300000',
        status: 1,
        price: 99.9,
        url: 'https://www.araujo.com.br/alcool-gel-70--cleanner-antisseptico-5-litros/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Álcool Gel 70% 5cinco 430g',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933274-400-400/07896054717468.jpg?v=637227452578330000',
        status: 1,
        price: 17.95,
        url: 'https://www.araujo.com.br/alcool-gel-70--5cinco-430g/p',
        category: 'Alcool'
      },
      {
        store: 'Araujo',
        name: 'Máscara Hospitalar KSN 10.02 MH PFF2 S N95 CA8357 com 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3931959-400-400/07898364820104.jpg?v=637208227895830000',
        status: 1,
        price: 16.9,
        url: 'https://www.araujo.com.br/mascara-hospitalar-ksn-10-02-mh-pff2-s-n95-ca8357-com-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Zalike Cores e Estampas Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933377-400-400/07899536100628.jpg?v=637229930095970000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-zalike-cores-e-estampas-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Facial Reutilizável Stamp Serigrafia 1 Unidade Cores Sortidas',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933559-400-400/00609963004447.jpg?v=637231868326970000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-facial-reutilizavel-stamp-serigrafia-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Dlaport Cor Branco 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933830-400-400/07890000517263.jpg?v=637235929138600000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-dlaport-cor-branco-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável TwoOne Infantil Cores e Estampas Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934257-400-400/07898342431643.jpg?v=637237781875930000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-twoone-infantil-cores-e-estampas-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Pinguim 100% Algodão Cores Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934111-400-400/07899438321664.jpg?v=637237094441030000',
        status: 1,
        price: 9.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-pinguim-100--algodao-cores-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável TwoOne Adulto Cores e Estampas Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934015-400-400/07898342431650.jpg?v=637236973912270000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-twoone-adulto-cores-e-estampas-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Dlaport Cor Preto 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933831-400-400/07890000517256.jpg?v=637235929268700000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-dlaport-cor-preto-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara Descartável em Tecido Cirúrgico 2 Rios Atóxica e Estéril 5 Unidades',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933881-400-400/07895031309979.jpg?v=637236168316830000',
        status: 1,
        price: 24.95,
        url: 'https://www.araujo.com.br/mascara-descartavel-em-tecido-cirurgico-2-rios-atoxica-e-esteril-5-unidades/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Amaralina Adulto Cor Branco 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934284-400-400/07892873600011.jpg?v=637237888291600000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-amaralina-adulto-cor-branco-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Dlaport Cor Rosa 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3933829-400-400/07890000517270.jpg?v=637235929135800000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-dlaport-cor-rosa-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Amaralina Infantil Cores e Estampas Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934049-400-400/07892873600028.jpg?v=637237027849700000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-amaralina-infantil-cores-e-estampas-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Mió Cores e Estampas Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3935067-400-400/07899536103360.jpg?v=637247974619600000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-mio-cores-e-estampas-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara de Tecido Reutilizável Amaralina Adulto Cores e Estampas Sortidas 1 Unidade',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934232-400-400/07892873600035.jpg?v=637237727298930000',
        status: 1,
        price: 12.95,
        url: 'https://www.araujo.com.br/mascara-de-tecido-reutilizavel-amaralina-adulto-cores-e-estampas-sortidas-1-unidade/p',
        category: 'Mascara'
      },
      {
        store: 'Araujo',
        name: 'Máscara Descartável Love Secret com 20 Unidades',
        image_url: 'http://araujo.vteximg.com.br/arquivos/ids/3934040-400-400/07890459040879.jpg?v=637237006368830000',
        status: 1,
        price: 99,
        url: 'https://www.araujo.com.br/mascara-descartavel-love-secret-com-20-unidades/p',
        category: 'Mascara'
      }
    ]
  )
end
