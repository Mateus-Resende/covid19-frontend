import React, { useState } from "react"
import "./Game.css"

import Icons from "../../assets/Assets"
import MemomyCard from "./MemoryCard"

let cardsArr = [
  { id: 1, disabled: false, flipped: false, framework: "casa", img: Icons.Casa, alt: 'casa' },
  { id: 2, disabled: false, flipped: false, framework: "casa", img: Icons.Casa, alt: 'casa' },
  { id: 3, disabled: false, flipped: false, framework: "distanciamento", img: Icons.Distanciamento, alt: 'distanciamento' },
  { id: 4, disabled: false, flipped: false, framework: "distanciamento", img: Icons.Distanciamento, alt: 'distanciamento' },
  { id: 5, disabled: false, flipped: false, framework: "lavar_maos", img: Icons.LavarMaos, alt: 'lavar as mãos' },
  { id: 6, disabled: false, flipped: false, framework: "lavar_maos", img: Icons.LavarMaos, alt: 'lavar as mãos' },
  { id: 7, disabled: false, flipped: false, framework: "espirro", img: Icons.Espirro, alt: 'espirro' },
  { id: 8, disabled: false, flipped: false, framework: "espirro", img: Icons.Espirro, alt: 'espirro' },
  { id: 9, disabled: false, flipped: false, framework: "tocar_rosto", img: Icons.TocarRosto, alt: 'tocar o rosto' },
  { id: 10, disabled: false, flipped: false, framework: "tocar_rosto", img: Icons.TocarRosto, alt: 'tocar o rosto' },
  { id: 11, disabled: false, flipped: false, framework: "mascara", img: Icons.Mascara, alt: 'mascara' },
  { id: 12, disabled: false, flipped: false, framework: "mascara", img: Icons.Mascara, alt: 'mascara' },
  { id: 13, disabled: false, flipped: false, framework: "aglomeracao", img: Icons.Aglomeracao, alt: 'aglomeração' },
  { id: 14, disabled: false, flipped: false, framework: "aglomeracao", img: Icons.Aglomeracao, alt: 'aglomeração' },
  { id: 15, disabled: false, flipped: false, framework: "brinquedos", img: Icons.Brinquedos, alt: 'brinquedos' },
  { id: 16, disabled: false, flipped: false, framework: "brinquedos", img: Icons.Brinquedos, alt: 'brinquedos' }
]

const Game = function () {
  const [gameStarted, setGameStarted] = useState(false)
  const [cards, setCards] = useState(cardsArr)
  const [firstCard, setFirstCard] = useState({ id: null, framework: null })
  const [hasFlippedCard, setHasFlippedCard] = useState(false)
  const [pontuacao, setPontuacao] = useState(0)
  const [lockBoard, setLockBoard] = useState(false)

  function flipCard(id, framework) {
    if (lockBoard) return
    if (id === firstCard.id) {
      setFirstCard({ id: null, framework: null })
      unflipCards()
      return
    }

    if (!hasFlippedCard) {
      let newCards = cards.map(card => {
        if (card.id === id && !card.disabled) {
          card.flipped = true
        }
        return card
      })

      setCards(newCards)
      setHasFlippedCard(true)
      setFirstCard({ id, framework })

      return
    }

    let isMatch = firstCard.id !== id && firstCard.framework === framework
    if (isMatch === true) {
      let newCards = cards.map(card => {
        if (card.id === firstCard.id || card.id === id) {
          card.flipped = true
          card.disabled = true
        }
        return card
      })

      setCards(newCards)
      setPontuacao(pontuacao + 10)
      resetBoard()
      setTimeout(() => mensagem(), 500)
    } else {
      setPontuacao(pontuacao - 3)
      let newCards = cards.map(card => {
        if (card.id === id) {
          card.flipped = true
        }
        return card
      })
      setCards(newCards)
      setLockBoard(true)
      setTimeout(() => unflipCards(id), 2000)
    }
  }

  function unflipCards(id) {
    setLockBoard(true)
    let newCards = cards.map(card => {
      if (!card.disabled && (card.id === firstCard.id || card.id === id)) {
        card.flipped = false
      }
      return card
    })
    setCards(newCards)
    resetBoard()
  }

  function resetBoard() {
    setHasFlippedCard(false)
    setLockBoard(false)
    setFirstCard({id: null, framework: null})
  }


  function mensagem(){
    var primeiraCarta = firstCard.framework
    if(primeiraCarta === "casa"){
      alert("Fique em casa\nSe você está com sintomas de gripe, fique em casa por 14 dias e siga as orientações do Ministério da Saúde para o isolamento domiciliar. Só procure um médico caso tenha falta de ar!\n\nPor quê? Assim você evita a superlotação dos hospitais e ajuda no combate ao Coronavírus.")
    }  else if(primeiraCarta === "distanciamento"){
      alert("Mantenha uma distância segura de 2 metros\nMantenha pelo menos 2 metros de distância entre você e qualquer pessoa que esteja tossindo ou espirrando.\n\nPor quê? Quando alguém tosse ou espirra, pulveriza pequenas gotas líquidas do nariz ou da boca, que podem conter vírus.")
    }  else if(primeiraCarta === "mascara"){
      alert("Use mascara ao sair de casa\nUsando a máscara você protege o outro e pratica o cuidado genuíno com o próximo, se todos usarmos à máscara estaremos protegendo uns aos outros.")
    }  else if(primeiraCarta === "lavar_maos"){
      alert("Lave suas mãos frequentemente\nLave com cuidado as mãos antes e depois das refeições com água e sabão, envolvendo os dedos, as palmas e costas das mãos até a altura dos punhos, ou então higienize com álcool em gel 70%.\n\nPor quê? Higienizando corretamente as mãos você mata os vírus que causam resfriado, gripe e COVID-19.")
    }  else if(primeiraCarta === "aglomeracao"){
      alert("Evite aglomerações\nEvite aglomerações e mantenha os ambientes limpos e bem ventilados.\n\nPor quê? A propagação do vírus é mais fácil em ambientes fechados com grande número de pessoas.")
    }  else if(primeiraCarta === "espirro"){
      alert("Cuidados ao tossir ou espirrar\nVocê deve cobrir a boca e o nariz com o cotovelo ou\num tecido dobrado quando tossir ou espirrar. Em seguida, descarte o tecido usado imediatamente.\n\nPor quê? Gotas espalham vírus. Ao seguir uma boa\nhigiene respiratória, você protege as pessoas ao seu redor contra resfriado, gripe e COVID-19.")
    }  else if(primeiraCarta === "tocar_rosto"){
      alert("Não toque o rosto\nEvite tocar o rosto com as mãos não lavadas.\n\nPor quê? O vírus entra no organismo por meio do nariz, boca e olhos. Evitar levar o vírus da mão para essas mucosas é uma das melhores medidas para não ficar doente.")
    }  else if(primeiraCarta === "brinquedos"){
      alert("Higienize o ceular e os brinquedos\nHigienize com frequência o celular, tablet e os brinquedos das crianças.\n\nPor quê? O vírus causador do COVID-19 consegue sobreviver por um tempo em algumas superfícies.")
    }  else{
      alert("Erro na carta:" + primeiraCarta)
    }
  }

  function shuffle() {
    if (gameStarted) return
    var currentIndex = cards.length, temporaryValue, randomIndex

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

      // Pick a remaining element...
      randomIndex = Math.floor(Math.random() * currentIndex)
      currentIndex -= 1

      // And swap it with the current element.
      temporaryValue = cards[currentIndex]
      cards[currentIndex] = cards[randomIndex]
      cards[randomIndex] = temporaryValue
    }
    setGameStarted(true)
  }

  shuffle()

  return (
    <div className="Game">
      <div className="content-title">
        <h1>Jogos</h1>
      </div>
      <div className="content-body">
        <div style={{display: 'block'}}>
          <section className="placar">
            <h3>Pontuação: </h3>
            <h3 id="pontos">{pontuacao}</h3>
          </section>
          <section className="memory-game">
            {
              cards.map((card) =>
                <MemomyCard
                  key={card.key}
                  framework={card.framework}
                  img={card.img}
                  disabled={card.disabled}
                  flipped={card.flipped}
                  alt={card.alt}
                  id={card.id}
                  parentClickHandler={flipCard} />
              )
            }
          </section>
        </div>
      </div>
    </div>
  )
}

export default Game
