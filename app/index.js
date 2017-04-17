'use strict';

import express from 'express';
import {exec} from 'node-exec-promise';

const PORT = 2999;

const app = express();
app.get('/', (req, res) => {
	exec('youtube-dl --extract-audio --audio-format mp3 wCA7Rq0EBU4').then(stdout => {
		console.log(stdout);
	}, (stderr) => {
		console.log(stderr);
	});
	res.send('Sudestada \n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
