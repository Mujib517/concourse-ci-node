import * as express from 'express';

const app = express();
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => console.log(`Server is running on ${PORT}`));

app.get('/', (req, res) => res.status(200).send("API Works"));
app.get('/health', (req, res) => res.status(200).json({ status: 'Up' }));