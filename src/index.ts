import express from 'express';

const api = express();

api.get('/', (req, res) => {
    res.json({message: 'hello world'});
});

api.get('/health-check', (req, res) => {
    res.send('Server is running');
});

const port = 80;
api.listen(port, () => {
    console.log(`Server has started on port ${port}`)
});
