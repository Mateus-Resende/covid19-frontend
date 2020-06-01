import React, { useState, useEffect } from "react";
import "./Shop.scss"
import { makeStyles } from '@material-ui/core/styles';
import Pagination from '@material-ui/lab/Pagination';
import Grid from '@material-ui/core/Grid'
import Paper from '@material-ui/core/Paper'

import Product from "./Product"

const LIMIT = 8
const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1,
  },
  paper: {
    height: 140,
    width: 100,
  },
  control: {
    padding: theme.spacing(2),
  },
  pagination: {
    marginTop: 12
  }
}));

const Shop = function () {
  const classes = useStyles()
  const [supplies, setSupplies] = useState([])
  const [page, setPage] = useState(1)
  const [isLoaded, setIsLoaded] = useState(false)
  const [error, setError] = useState(null)
  const [totalPages, setTotalPages] = useState(0)

  const fetchData = (event, page) => {
    setIsLoaded(false)
    fetch(`http://localhost:3000/products?page=${page}&limit=${LIMIT}`, {
      mode: 'cors',
      cache: 'no-cache',
      credentials: 'same-origin',
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(res => res.json())
    .then(data => {
      setSupplies(data.data)
      setIsLoaded(true)
      setTotalPages(data.total_pages)
    })
    .catch(err => {
      setError(err)
      setIsLoaded(true)
    })
  }

  useEffect(() => {
    fetchData(null, 1)
  }, [])


  return (
    <div className="Shop" onScroll={() => console.log('blabla')}>
      <div className="content-title">
        <h1>Suprimentos Médicos</h1>
      </div>
      <div className="content-body">
        <Grid item xs={12}>
          <Grid container justify="left" spacing={2}>
            {
              supplies ?
              supplies.map((product) => (
                <Grid key={product.id} item>
                  <Product
                    name={product.name}
                    price={product.price}
                    img={product.image_url}
                    link={product.url}
                    key={product.id} />
                </Grid>
              )) :
              null
            }
          </Grid>
        </Grid>
        <Pagination
          count={totalPages}
          shape="rounded"
          justify="right"
          className={classes.pagination}
          onChange={fetchData} />
      </div>
    </div>
  );
}

export default Shop
