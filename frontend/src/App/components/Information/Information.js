import React from "react";
import './Information.scss'

class Information extends React.Component {
  handleClick = (event) => {
    if (event.target.classList.contains('Hidden')) {
      event.target.classList.remove('Hidden');
    } else {
      event.target.classList.add('Hidden')
    }
  }

  render () {
    return (
      <div className="Information">
        <div className="content-title">
          <h1>Perguntas frequentes</h1>
        </div>
        <div className="content-body">
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Quais são os sintomas de alguém infectado com COVID-19?</div>
            <div className="Answer">
              <p>Os sintomas mais comuns da COVID-19 são febre, cansaço e tosse seca. Alguns pacientes podem apresentar dores, congestão nasal, dor de cabeça, conjuntivite, dor de garganta, diarreia, perda de paladar ou olfato, erupção cutânea na pele ou descoloração dos dedos das mãos ou dos pés. Esses sintomas geralmente são leves e começam gradualmente. Algumas pessoas são infectadas, mas apresentam apenas sintomas muito leves.</p>
              <p>A maioria das pessoas (cerca de 80%) se recupera da doença sem precisar de tratamento hospitalar. Uma em cada seis pessoas infectadas por COVID-19 fica gravemente doente e desenvolve dificuldade de respirar. As pessoas idosas e as que têm outras condições de saúde como pressão alta, problemas cardíacos e do pulmão, diabetes ou câncer, têm maior risco de ficarem gravemente doentes. No entanto, qualquer pessoa pode pegar o COVID-19 e ficar gravemente doente. Pessoas de todas as idades que apresentam febre e/ou tosse associada a dificuldade de respirar/falta de ar, dor/pressão no peito ou perda da fala ou movimento devem procurar atendimento médico imediatamente. Se possível, é recomendável ligar primeiro para a(o) médica(o) ou serviço de saúde, para que a(o) paciente possa ser encaminhada(o) para a clínica certa.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">O que devo fazer se tiver sintomas de COVID-19 e quando devo procurar atendimento médico?</div>
            <div className="Answer">
              <p>Se você tiver sintomas menores, como tosse leve ou febre leve, geralmente não há necessidade de procurar atendimento médico. Ficar em casa, fazer autoisolamento (conforme as orientações das autoridades nacionais) e monitorar seus sintomas.</p>
              <p>No entanto, se você mora em uma área com malária ou dengue, é importante não ignorar os sintomas da febre. Procure ajuda médica. Ao comparecer ao serviço de saúde, use uma máscara se possível, mantenha pelo menos 1 metro de distância de outras pessoas e não toque nas superfícies com as mãos. Se for uma criança que estiver doente, ajude-a a seguir esta orientação.</p>
              <p>Procure atendimento médico imediato se tiver dificuldade de respirar ou dor/pressão no peito. Se possível, ligue para o seu médico com antecedência, para que ele possa direcioná-lo para o centro de saúde certo.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Como o vírus responsável pela COVID-19 se espalha?</div>
            <div className="Answer">
              <p>As pessoas podem pegar a COVID-19 de outras pessoas que têm o vírus. A doença pode ser transmitida, principalmente, de pessoa para pessoa por meio de gotículas do nariz ou da boca que se espalham quando uma pessoa com COVID-19 tosse, espirra ou fala. Essas gotículas são relativamente pesadas, não viajam longe e caem rapidamente no chão. As pessoas podem pegar a COVID-19 se respirarem essas gotículas de uma pessoa infectada pelo vírus. É por isso que é importante ficar pelo menos a 1 metro de distância dos outros.</p>
              <p>As gotículas também podem pousar em objetos e superfícies ao redor da pessoa – como mesas, maçanetas, celulares e corrimãos. As pessoas podem pegar COVID-19 quando tocam nesses objetos ou superfícies com as mãos ou outra parte do corpo e, em seguida, tocam os olhos, nariz ou boca. É por isso que é importante lavar as mãos regularmente com água e sabão ou limpá-las com álcool em gel.</p>
              <p>A OPAS e a OMS estão avaliando pesquisas em andamento sobre a maneira como o vírus causador da COVID-19 é disseminado e continuarão a compartilhar descobertas atualizadas.</p>
              <p>O vírus que causa a COVID-19 pode ser transmitido pelo ar?Estudos até o momento sugerem que o vírus que causa a COVID-19 é transmitido principalmente pelo contato com gotículas respiratórias – e não pelo ar.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">É possível pegar COVID-19 de uma pessoa que não apresenta sintomas?</div>
            <div className="Answer">
              <p>A principal maneira pela qual a doença se espalha é através de gotículas respiratórias expelidas por alguém que está tossindo ou tem outros sintomas como febre e cansaço. Muitas pessoas com COVID-19 experimentam apenas sintomas leves, particularmente nos estágios iniciais da doença. É possível pegar COVID-19 de alguém com tosse leve e que não se sente doente. Alguns relatórios indicaram que pessoas sem sintomas podem transmitir o vírus. Ainda não se sabe com que frequência isso acontece.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Como podemos proteger aos outros e a nós mesmos se não sabemos quem está infectado?</div>
            <div className="Answer">
              <p>Praticar a higiene das mãos e respiratória é importante em TODOS os momentos e é a melhor maneira de proteger aos outros e a si mesma(o). Sempre que possível, mantenha uma distância de pelo menos 1 metro entre você e os outros, principalmente se você estiver ao lado de alguém que tosse ou espirra. Como algumas pessoas infectadas podem não estar ainda apresentando sintomas ou os sintomas podem ser leves, manter uma distância física de todos é uma boa ideia se você estiver em uma área onde a COVID-19 está circulando.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Quanto tempo pacientes devem ficar isolados após o desaparecimento dos sintomas?</div>
            <div className="Answer">
              <p>Pelo que se sabe até o momento, a principal forma de transmissão ocorre por pessoas que apresentam sintomas. Conforme o que já foi documentado na China, Singapura e Alemanha, alguns pacientes com COVID-19 podem espalhar vírus de 24 a 48 horas antes do início dos sintomas e de 3 a 4 semanas após o início dos sintomas. \nPor isso, a OMS recomenda que os pacientes sejam liberados do isolamento somente após terem dois testes negativos – com pelo menos 24 horas de intervalo – e estejam clinicamente recuperados. Se o teste não for possível, é prudente que os indivíduos continuem isolados por mais duas semanas após o fim dos sintomas, pois eles podem continuar a disseminar o vírus.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Posso pegar COVID-19 de fezes de alguém com a doença?</div>
            <div className="Answer">
              <p>Embora investigações iniciais sugiram que o vírus possa estar presente nas fezes em alguns casos, até o momento não houve relatos de transmissão fecal-oral da COVID-19. Além disso, não há evidências até o momento sobre a sobrevivência do vírus da COVID-19 em água ou esgoto.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Existe uma vacina ou medicamento contra COVID-19?</div>
            <div className="Answer">
              <p>Ainda não. Até o momento, não há vacina nem medicamento antiviral específico para prevenir ou tratar a COVID-2019. As pessoas infectadas devem receber cuidados de saúde para aliviar os sintomas. Pessoas com doenças graves devem ser hospitalizadas. A maioria dos pacientes se recupera graças aos cuidados de suporte. \nAtualmente, estão sendo investigadas possíveis vacinas e alguns tratamentos medicamentosos específicos, com testes através de ensaios clínicos. A OMS está coordenando esforços para desenvolver vacinas e medicamentos para prevenir e tratar a COVID-19. \nAs maneiras mais eficazes de proteger a si e aos outros contra a COVID-19 são limpar frequentemente as mãos, cobrir a tosse com a parte interior do cotovelo ou lenço e manter uma distância de pelo menos 1 metro das pessoas que estão tossindo ou espirrando.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">O que posso fazer para me proteger e evitar transmitir para outras pessoas?</div>
            <div className="Answer">
              <p>A maioria das pessoas infectadas experimenta uma doença leve e se recupera, mas pode ser mais grave para outras pessoas. Mantenha-se informado sobre os últimos desenvolvimentos a respeito da COVID-19 e faça o seguinte para cuidar da sua saúde e proteger a dos outros:</p>
              <ul>
                <li>Lave as mãos com água e sabão ou higienizador à base de álcool, para matar vírus que podem estar nas suas mãos.</li>
                <li>Mantenha pelo menos 1 metro de distância entre você e qualquer pessoa que esteja tossindo ou espirrando. Quando alguém tosse ou espirra, pulveriza pequenas gotas líquidas do nariz ou da boca, que podem conter vírus. Se você estiver muito próximo, poderá inspirar as gotículas – inclusive do vírus da COVID-19 se a pessoa que tossir tiver a doença.</li>
                <li>Evite tocar nos olhos, nariz e boca. As mãos tocam muitas superfícies e podem ser infectadas por vírus. Uma vez contaminadas, as mãos podem transferir o vírus para os olhos, nariz ou boca. A partir daí, o vírus pode entrar no corpo da pessoa e deixá-la doente.</li>
                <li>Certifique-se de que você e as pessoas ao seu redor seguem uma boa higiene respiratória. Isso significa cobrir a boca e o nariz com a parte interna do cotovelo ou lenço quando tossir ou espirrar (em seguida, descarte o lenço usado imediatamente). Gotículas espalham vírus. Ao seguir uma boa higiene respiratória, você protege as pessoas ao seu redor contra vírus responsáveis por resfriado, gripe e COVID-19.</li>
                <li>Fique em casa se não se sentir bem. Se você tiver febre, tosse e dificuldade em respirar, procure atendimento médico. Siga as instruções da sua autoridade sanitária nacional ou local, porque elas sempre terão as informações mais atualizadas sobre a situação em sua área.</li>
                <li>Pessoas doentes devem adiar ou evitar viajar para as áreas afetadas por coronavírus. Áreas afetadas são países, áreas, províncias ou cidades onde há transmissão contínua -- não áreas com apenas casos importados.</li>
                <li>Os viajantes que retornam das áreas afetadas devem monitorar seus sintomas por 14 dias e seguir os protocolos nacionais dos países receptores; e se ocorrerem sintomas, devem entrar em contato com um médico e informar sobre o histórico de viagem e os sintomas.</li>
              </ul>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">O que posso fazer para me proteger e evitar transmitir para outras pessoas?</div>
            <div className="Answer">
              <p>Ao fazer compras, mantenha pelo menos 1 metro de distância dos outros e evite tocar nos olhos, boca e nariz. Se possível, higienize as alças dos carrinhos de compras ou cestas antes. Lave bem as mãos após chegar e casa e depois de manusear e armazenar os produtos adquiridos. Atualmente, não há caso confirmado de COVID-19 transmitido por meio de alimentos ou embalagens de alimentos.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Quanto tempo leva após a exposição ao COVID-19 para desenvolver sintomas?</div>
            <div className="Answer">
              <p>O tempo entre a exposição à COVID-19 e o momento em que os sintomas começam (período de incubação) é geralmente de cinco a seis dias, mas pode variar de 1 a 14 dias.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Quanto tempo o vírus sobrevive nas superfícies?</div>
            <div className="Answer">
              <p>A coisa mais importante a saber sobre a presença de coronavírus em superfícies é que elas podem ser facilmente limpas com desinfetantes domésticos comuns, que matam o vírus. Estudos demonstraram que o vírus da COVID-19 pode sobreviver por até 72 horas em plástico e aço inoxidável, menos de 4 horas em cobre e menos de 24 horas em papelão. Como sempre, limpe suas mãos com um higienizador à base de álcool ou lave-as com água e sabão. Evite tocar nos olhos, na boca ou no nariz.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">É seguro receber um pacote de qualquer área em que a COVID-19 tenha sido notificada?</div>
            <div className="Answer">
              <p>Sim. A probabilidade de uma pessoa infectada contaminar mercadorias comerciais é baixa e o risco de pegar o vírus que causa a COVID-19 em um pacote que foi movido, transportado e exposto a diferentes condições e temperaturas também é baixo.</p>
            </div>
          </div>
          <div className="Question Hidden" onClick={this.handleClick}>
            <div className="Title">Quem está em risco de desenvolver doenças graves?</div>
            <div className="Answer">
              <p>As informações disponíveis atualmente apontam que o vírus pode causar sintomas leves e semelhantes aos da gripe, além de doenças mais graves. Os pacientes apresentam uma variedade de sintomas: febre (83%-98%), tosse (68%) e falta de ar (19%-35%). Com base nos dados atuais, 81% dos casos parecem ter doença leve ou moderada, 14% parecem progredir para doença grave e 5% são críticos. Pessoas idosas e com condições de saúde pré-existentes (como pressão alta, doenças cardíacas, doenças pulmonares, câncer ou diabetes) parecem desenvolver doenças graves com mais frequência do que outros.</p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Information;
