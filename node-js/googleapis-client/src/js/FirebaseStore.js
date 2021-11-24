var admin = require("firebase-admin");

class FireBaseStore {
    constructor(key_json = "./firebase.json", encrpyt = false) {
        if (encrpyt) {
            var decode = Buffer.from(key_json.replace(/(.*base64\,)/ig, ""), 'base64').toString('utf8')
            var type = JSON.parse(decode)
        } else {
            if (key_json) {
                var type = require(`${process.cwd()}/${key_json}`)
            } else {
                throw new Error("no file credential json")
            }
        }
        this.fire = admin.initializeApp({
            credential: admin.credential.cert(type)
        });
        this.db = this.fire.firestore();
    }

    async add(name, doc, data) {
        if (!name && !doc && !data) {
            return "please fill name doc and data thanks muach lopyu"
        }
        var add = await this.db.collection(name).doc(doc).set(data)
        var data = JSON.parse(JSON.stringify(add, null, 2).replace(/(_)/ig, ""))
        return data
    }

    async update(name, doc, data) {
        if (!name && !doc && !data) {
            return "please fill name doc and data thanks muach lopyu"
        }
        var udate = await this.db.collection(name).doc(doc).update(data)
        var data = JSON.parse(JSON.stringify(udate, null, 2).replace(/(_)/ig, ""))
        return data
    }

    async delete(data) {
        if (!data.name && !data.doc && !data.type) {
            return "please fill name doc and data thanks muach lopyu"
        }
        var type = data.type
        if (new RegExp("^doc$", "i").exec(type)) {
            var delet = await this.db.collection(data.name).doc(data.doc).delete()
            var data = JSON.parse(JSON.stringify(delet, null, 2).replace(/(_)/ig, ""))
            return data
        } else if (new RegExp("^collom$", "i").exec(type)) {
            var FieldValue = admin.firestore.FieldValue;
            var cityRef = db.collection(data.name).doc(data.doc);
            var res = await cityRef.update({
                capital: FieldValue.delete()
            });
            return res
        } else {
            return "error type"
        }
    }
    async getAll(name) {
        if (!name) {
            return "please fill name doc and data thanks muach lopyu"
        }
        var get = await this.db.collection(name).get()
        if (!get) {
            return "no data in database"
        } else {
            var array_data = []
            get.forEach(function (doc) {
                var json = {}
                json.id = doc.id
                json.exist - doc.exists
                json.data = doc.data()
                var json_time = {}
                if (doc.Timestamp?._seconds) {
                    json_time.created_seconds = doc.Timestamp?._seconds
                }
                if (doc.Timestamp?._nanoseconds) {
                    json_time.created_nanoseconds = doc.Timestamp?._nanoseconds
                }
                if (doc.updateTime?._seconds) {
                    json_time.update_seconds = doc.updateTime?._seconds
                }
                if (doc.updateTime?._nanoseconds) {
                    json_time.update_nanoseconds = doc.updateTime?._nanoseconds
                }
                json.time = json_time
                array_data.push(json)
            });
            return array_data
        }
    }
    async get(name, id) {
        if (!name && !id) {
            return "please fill name doc and data thanks muach lopyu"
        }
        var get = await this.db.collection(name).get()
        if (!get) {
            return "no data in database"
        } else {
            var message = false
            get.forEach(function (doc) {
                if (new RegExp(`^${id}$`, "i").exec(doc.id)) {
                    var json = {}
                    json.id = doc.id
                    json.exist - doc.exists
                    json.data = doc.data()
                    var json_time = {}
                    if (doc.Timestamp?._seconds) {
                        json_time.created_seconds = doc.Timestamp?._seconds
                    }
                    if (doc.Timestamp?._nanoseconds) {
                        json_time.created_nanoseconds = doc.Timestamp?._nanoseconds
                    }
                    if (doc.updateTime?._seconds) {
                        json_time.update_seconds = doc.updateTime?._seconds
                    }
                    if (doc.updateTime?._nanoseconds) {
                        json_time.update_nanoseconds = doc.updateTime?._nanoseconds
                    }
                    json.time = json_time
                    message = json
                }
            });
            return message
        }
    }

}

module.exports = {
    FireBaseStore
};