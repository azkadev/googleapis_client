var admin = require("firebase-admin");
var folder = process.cwd();
class FirebaseStorage {
    constructor(bucket_name, key_json = "./firebase.json", encrpyt = false) {
        if (encrpyt) {
            var decode = Buffer.from(key_json.replace(/(.*base64\,)/ig, ""), 'base64').toString('utf8');
            var type = JSON.parse(decode);
        } else {
            if (key_json) {
                var type = require(`${process.cwd()}/${key_json}`)
            } else {
                throw new Error("no file credential json")

            }
        }
        this.fire = admin.initializeApp({
            credential: admin.credential.cert(type),
            storageBucket: `${bucket_name}.appspot.com`
        });
        this.bucket = this.fire.storage().bucket();
    }

    async upload(pathFile) {
        var data = await this.bucket.upload(`${folder}/${pathFile}`);
        return JSON.parse(JSON.stringify(data, null, 2).replace(/(\_)/ig, ""));
    }

    async getFiles(query) {
        var data = await this.bucket.getFiles(query);
        return JSON.parse(JSON.stringify(data, null, 2).replace(/(\_)/ig, ""));
    }
    async makePublic() {
        var data = await this.bucket.makePublic()
    }


}

module.exports = {
    FirebaseStorage
};