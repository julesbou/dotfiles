var fs = require('fs')

fs.readFile('./.gitmodules', function(err, data) {
    if (err) throw err

    var path, url, content = String(data).split('\n')

    for (var i = 0; i < content.length - 1; i++) {
        console.log('git submodule add ' + content[i + 1].match(/=(.*)$/)[1] + ' ' + content[i + 2].match(/=(.*)$/)[1])
        i += 2
    }
})
