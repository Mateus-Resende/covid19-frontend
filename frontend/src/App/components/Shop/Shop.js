import React from "react";
import "./Shop.scss"

import Product from "./Product"

const supplies = [
  {
    id: 1,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 2,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 3,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 4,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 5,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 6,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 7,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 8,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 9,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 10,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 11,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  },
  {
    id: 12,
    name: "Máscara",
    price: 1899,
    img: "https://images-americanas.b2w.io/produtos/01/00/img/1676204/1/1676204151_1GG.jpg",
    link: "https://americanas.com.br/produto/1676204134/mascara-tnt-triplo-com-50-unidades"
  }
]

const Shop = function () {
  let products = null

  if (typeof supplies !== "undefined" && supplies.length > 0) {
    products = supplies.map((product) => (
      <Product
        name={product.name}
        price={product.price}
        img={product.img}
        link={product.link}
        key={product.id} />
    ))
  }

  return (
    <div className="Shop">
      <div className="content-title">
        <h1>Suprimentos Médicos</h1>
      </div>
      <div className="content-body">
        {products}
      </div>
    </div>
  );
}

export default Shop
