const http = require("http");

const server = http.createServer((req, res) => {
  if (req.url === "/health") {
    res.writeHead(200, { "Content-Type": "application/json" });
    return res.end(JSON.stringify({ status: "healthy" }));
  }

  res.writeHead(200, { "Content-Type": "text/html" });
  res.end(`
    <h1>DevOps CI/CD Pipeline on AWS</h1>
    <p>Deployed automatically using Jenkins and Docker.</p>
    <p>Version: ${process.env.APP_VERSION || "1.0.0"}</p>
  `);
});

server.listen(3000, "0.0.0.0", () => {
  console.log("Application listening on port 3000");
});

module.exports = server;
