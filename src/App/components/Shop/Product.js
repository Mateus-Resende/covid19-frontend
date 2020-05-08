import React from "react";
import './Product.scss'

const Product = function ({name, price, img, link, id}) {
  return (
    <div className="Product" key={id}>
      <div className="Image">
        <img src={img} alt="Mascara" />
      </div>
      <div className="Info">
        <div className="Name">
          {name}
        </div>
        <div className="Price">
          R$ {(price.toFixed(2) / 100.00).toFixed(2)}
        </div>
        <div className="LinkButton">
          <a href={link} target="_blank" rel="noopener noreferrer">Comprar</a>
        </div>
      </div>
    </div>
  );
}

export default Product
