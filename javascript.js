const { spawn } = require('child_process');
console.log("Hello from JavaScript!");
const child = spawn('php', ['php.php']);
child.stdout.on('data', (data) => {
    process.stdout.write(data.toString());
});
child.on('exit', (code) => {
    console.log("Goodbye from JavaScript!");
});
