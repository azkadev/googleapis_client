const fs = require("fs");

const defaultOptions = {
    asyncWrite: false,
    syncOnWrite: true,
    jsonSpaces: 4
};

let validateJSON = function (fileContent) {
    try {
        JSON.parse(fileContent);
    } catch (e) {
        throw new Error('Given filePath is not empty and its content is not valid JSON.');
    }
    return true;
};


class scriptdb {
    constructor(filePath, options) {
        // Mandatory arguments check
        if (!filePath || !filePath.length) {
            throw new Error('Missing file path argument.');
        } else {
            this.filePath = filePath;
        }

        // Options parsing
        if (options) {
            for (let key in defaultOptions) {
                if (!options.hasOwnProperty(key)) options[key] = defaultOptions[key];
            }
            this.options = options;
        } else {
            this.options = defaultOptions;
        }


        // Storage initialization
        this.storage = {};

        // File existence check
        let stats;
        try {
            stats = fs.statSync(filePath);
        } catch (err) {
            if (err.code === 'ENOENT') {
                /* File doesn't exist */
                return;
            } else if (err.code === 'EACCES') {
                throw new Error(`Cannot access path "${filePath}".`);
            } else {
                // Other error
                throw new Error(`Error while checking for existence of path "${filePath}": ${err}`);
            }
        }
        /* File exists */
        try {
            fs.accessSync(filePath, fs.constants.R_OK | fs.constants.W_OK);
        } catch (err) {
            throw new Error(`Cannot read & write on path "${filePath}". Check permissions!`);
        }
        if (stats.size > 0) {
            let data;
            try {
                data = fs.readFileSync(filePath);
            } catch (err) {
                throw err;  // TODO: Do something meaningful
            }
            if (validateJSON(data)) this.storage = JSON.parse(data);
        }
    }
}

scriptdb.prototype.setProperty = function (key, value) {
    this.storage[key] = value;
    if (this.options && this.options.syncOnWrite) this.sync();
    return {}
};

scriptdb.prototype.getProperty = function (key) {
    return this.storage.hasOwnProperty(key) ? this.storage[key] : undefined;
};

scriptdb.prototype.has = function (key) {
    return this.storage.hasOwnProperty(key);
};

scriptdb.prototype.deleteProperty = function (key) {
    let retVal = this.storage.hasOwnProperty(key) ? delete this.storage[key] : undefined;
    if (this.options && this.options.syncOnWrite) this.sync();
    return retVal;
};

scriptdb.prototype.deleteAllProperties = function () {
    for (var key in this.storage) {
        //noinspection JSUnfilteredForInLoop
        this.delete(key);
    }
    return this;
};

scriptdb.prototype.sync = function () {
    if (this.options && this.options.asyncWrite) {
        fs.writeFile(this.filePath, JSON.stringify(this.storage, null, this.options.jsonSpaces), (err) => {
            if (err) throw err;
        });
    } else {
        try {
            fs.writeFileSync(this.filePath, JSON.stringify(this.storage, null, this.options.jsonSpaces));
        } catch (err) {
            if (err.code === 'EACCES') {
                throw new Error(`Cannot access path "${this.filePath}".`);
            } else {
                throw new Error(`Error while writing to path "${this.filePath}": ${err}`);
            }
        }
    }
};

scriptdb.prototype.getProperties = function (storage) {
    if (storage) {
        try {
            JSON.parse(JSON.stringify(storage));
            this.storage = storage;
        } catch (err) {
            throw new Error('Given parameter is not a valid JSON object.');
        }
    }
    return JSON.parse(JSON.stringify(this.storage));
};

/*

Licensec 
@azkadev
*/

class state {
    constructor(path = "./script.json") {
        this.scriptsdb = new scriptdb(path)
    }

    getValue(key) {
        if (!key){
            throw new Error("please fill key")
        }
        try {
            var get = this.scriptsdb.getProperty(key) ? this.scriptsdb.getProperty(key) : false
            return get
        } catch (e) {
            return false
        }
    }
    getValues() {
        try {
            var get = this.scriptsdb.getProperties()
            return get
        } catch (e) {
            return false
        }
    }
    setValue(key, data) {
        if (!key && ! data){
            throw new Error("please fill key && data")
        }
        try {
            var set = this.scriptsdb.setProperty(key, data)
            return set
        } catch (e) {
            return false
        }
    }
    delete(key) {
        if (!key){
            throw new Error("please fill key")
        }
        try {
            var set = this.scriptsdb.deleteProperty(key)
            return set
        } catch (e) {
            return false
        }
    }



}


module.exports = { scriptdb, state }