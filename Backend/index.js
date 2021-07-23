const express = require('express');
var http = require('http');
const app = express();
//const cors = require('cors');
const port = process.env.PORT || 3000;
var server = http.createServer(app);
var io = require('socket.io')(server, {
    cors: {
        origin: "*"
    }
});

app.use(express.json());


io.on("connection", (socket) => {
    console.log("connected");
    console.log(socket.id, "has joined");
    socket.on("/test", (msg) => console.log(msg));

});

server.listen(port, "0.0.0.0", () => { console.log("Server started"); });