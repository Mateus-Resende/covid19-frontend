import React from "react";

import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';

const useStyles = makeStyles({
  root: {
    width: 250,
    height: 430
  },
  media: {
    height: 250,
    width: 250
  },
  productTitle: {
    textOverflow: 'ellipsis',
    whiteSpace: 'nowrap',
    overflow: 'hidden'
  },
  action: {
    backgroundColor: '#2dce89'
  }
});
const Product = function ({name, price, img, link}) {
  const classes = useStyles();

  return (
    <Card className={classes.root}>
      <CardMedia
        className={classes.media}
        image={img}
        title={name}
      />
      <CardContent>
        <Typography gutterBottom variant="subtitle1" component="p" className={classes.productTitle}>
          {name}
        </Typography>
        <Typography variant="h6" component="p">
          R$ {price}
        </Typography>
      </CardContent>
      <CardActions>
        <Button
          size="medium"
          variant="contained"
          color="primary"
          href={link}
          target="_blank"
          fullWidth={true}>
          Comprar
        </Button>
      </CardActions>
    </Card>
  );
}

export default Product