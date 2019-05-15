const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

// parse application/json
app.use(bodyParser.json());

// create database connestion
const conn = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'db_biodata'
});

// connect to database
conn.connect((err) =>{
	if(err) throw err;
	console.log('Mysql Connected...');
});

// Menampilkan semua data categories
app.get('/api/biodata',(req, res) => {
	let sql = "SELECT * FROM categories";
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({"status":200, "error": null, "response": results}));
	});
});

// Menampilkan data categories berdasarkan id
app.get('/api/biodata/:id',(req, res) => {
	let sql = "SELECT * FROM categories WHERE id="+req.params.id;
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
	});
});

// Menambahkan data categories baru
app.post('/api/biodata',(req, res) => {
	let data = {name: req.body.name, address: req.body.address, hobbies: req.body.hobbies, is_married: req.body.is_married, school: req.body.school, skills: req.body.skills};
	let sql = "INSERT INTO categories SET ?";
	let query = conn.query(sql, data,(err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
	});
});

// Edit data biodata berdasarkan id
app.put('/api/biodata/:id',(req, res) => {
	let sql = "UPDATE categories SET name='"+req.body.name+"', address='"+req.body.address+"', hobbies='"+req.body.hobbies+"', is_married='"+req.body.is_married+"', school='"+req.body.school+"', skills='"+req.body.skills+"' WHERE id="+req.params.id;
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
	});
});

// Delete data biodata berdasarkan id
app.delete('/api/biodata/:id', (req, res) => {
	let sql = "DELETE FROM categories WHERE id="+req.params.id+"";
	let query = conn.query(sql, (err, results) => {
		if(err) throw err;
		res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
	});
});

// Server listening
app.listen(4000,() => {
	console.log('Server started on port 4000...');
});