const fs = require('fs');
const path = require('path');

const yaml = require('yaml');


const BASE_PATH = process.cwd()

function main() {
    const file = fs.readFileSync(path.join(BASE_PATH, 'config', 'data.yml'), 'utf-8')

    fs.writeFileSync(path.join(BASE_PATH, 'config', 'data.json'), JSON.stringify(yaml.parse(file)))
}

main()
