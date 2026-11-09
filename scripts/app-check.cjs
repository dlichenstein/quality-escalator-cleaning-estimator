const fs = require('fs');
const html = fs.readFileSync('index.html', 'utf8');
const scripts = [...html.matchAll(/<script>([\s\S]*?)<\/script>/gi)].map(m => m[1]);
if (!scripts.length) throw new Error('No inline application script found');
for (const s of scripts) new Function(s);
console.log('Application JavaScript syntax check passed.');
