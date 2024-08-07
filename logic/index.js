const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use(cors());

app.post('/api/grading', (req, res) => {
  let grades = req.body.grades;
  
  let roundedGrades = grades.map(grade => {
    let round = Math.ceil(grade / 5) * 5;
    if (grade < 38) {
      return grade;
    } else if ((round - grade) < 3) {
      return round;
    } else {
      return grade;
    }
  });

  res.status(200).send(`Here's a list of our class grades: ${roundedGrades}`);
});

app.post('/api/candle', (req, res) => {
  const candles = req.body.candles;

  const highCandles = Math.max(...candles);

  const totalHigh = candles.filter(num => num === highCandles).length;
  
  res.status(200).send(`the tallest candles is ${highCandles}, and every kids might blow ${totalHigh} candles`);
})

app.post('/api/candy', (req, res) => {
  const scores = req.body.scores;

  const minValue = Math.min(...scores);
  const maxValue = Math.max(...scores);

  const sumScores = maxValue - minValue
  const condition = sumScores / 2

  const candies = scores.map(score => {return score <= condition ? 1 : 2});
  const minOrder = candies.reduce((total, number) => total + number, 0);

  res.status(200).send(`Alice needs to buy at least ${minOrder} candies, so that she can give that candies by this rules [${candies}]`)
})

const port = 3000;
app.listen(port, () => {
  console.log(`Listening on port ${port}`);
  
})