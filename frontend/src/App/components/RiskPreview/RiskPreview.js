import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Step from '@material-ui/core/Step';
import Stepper from '@material-ui/core/Stepper';
import StepLabel from '@material-ui/core/StepLabel';
import StepContent from '@material-ui/core/StepContent';
import Button from '@material-ui/core/Button';
import Paper from '@material-ui/core/Paper';
import Typography from '@material-ui/core/Typography';
import FormGroup from '@material-ui/core/FormGroup';
import RadioGroup from '@material-ui/core/RadioGroup';
import Radio from '@material-ui/core/Radio';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import Checkbox from '@material-ui/core/Checkbox';

const useStyles = makeStyles((theme) => ({
  root: {
    width: '70%',
    margin: 'auto'
  },
  button: {
    marginTop: theme.spacing(1),
    marginRight: theme.spacing(1),
  },
  actionsContainer: {
    marginBottom: theme.spacing(2),
  },
  resetContainer: {
    width: '70%',
    padding: theme.spacing(3),
  },
}));

function getSteps() {
  return [
    'Você teve algum dos sintomas abaixo nos últimos 14 dias?',
    'Você teve contato com pessoas com os mesmos sintomas ou com pessoas com casos confirmados?',
    'Quantas vezes você saiu de casa nos últimos 14 dias?'];
}

function getStepContent(step, state, handleChange) {
  switch (step) {
    case 0:
      return (
        <div>
          <FormControlLabel
            control={
              <Checkbox
                checked={state.febre}
                onChange={handleChange}
                name="febre"
                color="primary"
              />
            }
            label="Febre"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.tosseSeca}
                onChange={handleChange}
                name="tosseSeca"
                color="primary"
              />
            }
            label="Tosse seca"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.cansaco}
                onChange={handleChange}
                name="cansaco"
                color="primary"
              />
            }
            label="Cansaço"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.dores}
                onChange={handleChange}
                name="dores"
                color="primary"
              />
            }
            label="Dores"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.congestaoNasal}
                onChange={handleChange}
                name="congestaoNasal"
                color="primary"
              />
            }
            label="Congestão nasal"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.dorDeCabeça}
                onChange={handleChange}
                name="dorDeCabeca"
                color="primary"
              />
            }
            label="Dor de cabeça"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.conjuntivite}
                onChange={handleChange}
                name="conjuntivite"
                color="primary"
              />
            }
            label="conjuntivite"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.dorDeGarganta}
                onChange={handleChange}
                name="dorDeGarganta"
                color="primary"
              />
            }
            label="dor de garganta"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.diarreia}
                onChange={handleChange}
                name="diarreia"
                color="primary"
              />
            }
            label="diarreia"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.perdaDePaladarOuOlfato}
                onChange={handleChange}
                name="perdaDePaladarOuOlfato"
                color="primary"
              />
            }
            label="perda de paladar ou olfato"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.erupcaoCutaneaNaPele}
                onChange={handleChange}
                name="erupcaoCutaneaNaPele"
                color="primary"
              />
            }
            label="Erupção cutânea na pele"
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={state.descoloracao}
                onChange={handleChange}
                name="descoloracao"
                color="primary"
              />
            }
            label="Descoloração dos dedos das mãos ou dos pés"
          />
        </div>
      );
    case 1:
      return (
        <RadioGroup aria-label="contact" name="contact" value={state.contact} onChange={handleChange}>
          <FormControlLabel value="1" control={<Radio />} label="Sim" />
          <FormControlLabel value="0" control={<Radio />} label="Não" />
        </RadioGroup>
      );
    case 2:
      return (
        <RadioGroup aria-label="outside" name="outside" value={state.outside} onChange={handleChange}>
          <FormControlLabel value="0" control={<Radio />} label="0 a 1" />
          <FormControlLabel value="1" control={<Radio />} label="2 a 3" />
          <FormControlLabel value="2" control={<Radio />} label="4 a 6" />
          <FormControlLabel value="3" control={<Radio />} label="6+" />
        </RadioGroup>
      );
    default:
      return 'Unknown step';
  }
}

export default function RiskPreview() {
  const classes = useStyles();
  const [activeStep, setActiveStep] = React.useState(0);
  const steps = getSteps();
  const [state, setState] = React.useState({
    contact: "1",
    outside: "3",
    febre: false,
    tosseSeca: false,
    cansaco: false,
    dores: false,
    congestaoNasal: false,
    dorDeCabeça: false,
    conjuntivite: false,
    dorDeGarganta: false,
    diarreia: false,
    erupcaoCutaneaNaPele: false,
    perdaDePaladarOuOlfato: false,
    descoloracao: false,
  });

  const handleNext = () => {
    setActiveStep((prevActiveStep) => prevActiveStep + 1);
  };

  const handleBack = () => {
    setActiveStep((prevActiveStep) => prevActiveStep - 1);
  };

  const handleReset = () => {
    setActiveStep(0);
  };

  const handleChange = (event) => {
    const value = event.target.type === 'radio' ? event.target.value : event.target.checked
    setState({ ...state, [event.target.name]: value });
  };

  const getRiskLevel = () => {
    return (Number(state.febre) + Number(state.tosseSeca) + Number(state.cansaco) + Number(state.dores) + Number(state.congestaoNasal) + Number(state.dorDeCabeça) + Number(state.conjuntivite) + Number(state.dorDeGarganta) + Number(state.diarreia) + Number(state.erupcaoCutaneaNaPele) + Number(state.perdaDePaladarOuOlfato) + Number(state.descoloracao)) * ((state.contact + 1) * 15) * ((state.outside * 4))
  }

  return (
    <div className={classes.root}>
      <FormGroup row>
        <Stepper activeStep={activeStep} orientation="vertical">
          {steps.map((label, index) => (
            <Step key={label}>
              <StepLabel>{label}</StepLabel>
              <StepContent>
                <Typography>{getStepContent(index, state, handleChange)}</Typography>
                <div className={classes.actionsContainer}>
                  <div>
                    <Button
                      disabled={activeStep === 0}
                      onClick={handleBack}
                      className={classes.button}
                    >
                      Back
                    </Button>
                    <Button
                      variant="contained"
                      color="primary"
                      onClick={handleNext}
                      className={classes.button}
                    >
                      {activeStep === steps.length - 1 ? 'Finish' : 'Next'}
                    </Button>
                  </div>
                </div>
              </StepContent>
            </Step>
          ))}
        </Stepper>
        {activeStep === steps.length && (
          <Paper elevation={0} className={classes.resetContainer}>
            <Typography>Você terminou o questionário, atualmente o seu nível de risco é: {
              getRiskLevel() < 20
              ? 'Baixo'
              : getRiskLevel() > 20 && getRiskLevel() < 600
              ? 'Moderado'
              : 'Alto'
            }</Typography>
            <Button onClick={handleReset} className={classes.button}>
              Reset
            </Button>
          </Paper>
        )}
      </FormGroup>
    </div>
  );
}
