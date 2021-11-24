const { google } = require("googleapis");
class GoogleSheets {
  constructor(sheet_id, keyFile) {
    this.sheet_id = sheet_id
    var parameter = {
      keyFile: keyFile || "credentials.json",
      scopes: "https://www.googleapis.com/auth/spreadsheets",
    }
    this.auth = new google.auth.GoogleAuth(parameter);
    this.client = this.auth.getClient()
    this.Sheets = google.sheets({ version: "v4", auth: this.client });
  }
  async getAll(range_name) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    return (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
  }
  async getUserRow(range_name, user_data) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example msg.from.id";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var data = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!data) {
      return 0;
    } else {
      for (var row = 0; row < data.length; row++) {
        var pola = new RegExp(`^${user_data}$`, "i");
        if (pola.exec(data[row][0])) {
          return row + 2;
        }
      }
      return 0;
    }
  }

  async save(range_name, user_data, array_save, array_update, range_name_update) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }

    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }

    if (!user_data) {
      return "User data is required Please Read My docs, example msg.from.id";
    }
    if (!array_save) {
      return "array_save is required Please Read My docs, example [msg.from.id, msg.from.username]";
    }
    if (!array_update) {
      return "array_update is required Please Read My docs, example [msg.from.id, msg.from.username]";
    }
    if (!range_name_update) {
      return "range_name_update is required Please Read My docs, example \"Sheet!A\"";
    }
    var rownum = await this.getUserRow(range_name, user_data);
    if (rownum == 0) {
      var datauser = [
        array_save
      ];
      var parameter = {
        auth: this.auth,
        spreadsheetId: this.sheet_id,
        range: range_name,
        valueInputOption: "USER_ENTERED",
        resource: {
          values: datauser
        }
      }
      var result = this.Sheets.spreadsheets.values.append(parameter);
      return true
    } else {
      var datauser = [
        array_update
      ];
      var rangeName = range_name_update.replace(/(:.*)/ig, "") + rownum + ":" + range_name_update.replace(/(.*:)/ig, "") + rownum;
      var parameter = {
        auth: this.auth,
        spreadsheetId: this.sheet_id,
        range: rangeName,
        valueInputOption: "USER_ENTERED",
        resource: {
          values: datauser
        }
      }
      var result = this.Sheets.spreadsheets.values.update(parameter);
      return true
    }
  }

  async allow(range_name, user_data, get_row_num, return_row_num) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example msg.from.id";
    }

    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var data = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!data) {
      return 0;
    } else {
      for (var row = 0; row < data.length; row++) {
        var pola = new RegExp("^" + user_data + "$", "i");
        if (pola.exec(data[row][get_row_num])) {
          return Number(data[row][return_row_num]);
        }
      }
      return 0;
    }
  }

  async count(range_name, user_data, get_row_num) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }

    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example \"private\"";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var users = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!users) {
      return 0;
    } else {
      var x = 0;
      for (var row = 0; row < users.length; row++) {
        var pola = new RegExp("^" + user_data + "$", "i");
        if (pola.exec(users[row][get_row_num])) {
          x = x + 1;
        }
      }
      return x;
    }
  }
  arrayToJson(data) {
    var result = {}
    for (var x in data) {
      result[x] = data[x];
    }
    return result;
  }
  async getRow(range_name, user_data, get_row_num, return_row_num) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example msg.from.id";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var data = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!data) {
      return false;
    } else {
      for (var row = 0; row < data.length; row++) {
        var pola = new RegExp("^" + user_data + "$", "i");
        if (pola.exec(data[row][get_row_num])) {
          var hasil = data[row][return_row_num];
          return hasil;
        }
      }
      return false;
    }
  }
  async getRows(range_name, user_data, get_row_num) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example msg.from.id";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var data = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!data) {
      return false;
    } else {
      for (var row = 0; row < data.length; row++) {
        var pola = new RegExp("^" + user_data + "$", "i");
        if (pola.exec(data[row][get_row_num])) {
          var hasil = data[row];
          return this.arrayToJson(hasil)
        }
      }
      return false;
    }
  }

  async saveRow(range_name, user_data, get_row_num, new_data, range_name0) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example msg.from.id";
    }
    if (!new_data) {
      return "new_data data is required Please Read My docs, example msg.from.id";
    }
    if (!range_name0) {
      return "range_name0 is required Please Read My docs, example \"0\"";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var data = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!data) {
        return false;
    } else {
      for (var row = 0; row < data.length; row++) {
        var pola = new RegExp("^" + user_data + "$", "i");
        if (pola.exec(data[row][get_row_num])) {
          var rownum = row + 2;
          var datauser = [
            [new_data]
          ];
          var rangeName = range_name0 + rownum;
          var parameter = {
            auth: this.auth,
            spreadsheetId: this.sheet_id,
            range: rangeName,
            valueInputOption: "USER_ENTERED",
            resource: {
              values: datauser
            }
          }
          var result = this.Sheets.spreadsheets.values.update(parameter);
          return true;
        }
      };
    }
  }

  async saveRows(range_name, user_data, get_row_num, new_data_array, range_name_update, range_name_update0) {
    if (!this.sheet_id) {
      return "Sheet id is required Please Read My docs, example \"1KAxctBF3qT8OiZXeA34eFYPYCft22e32e\"";
    }
    if (!range_name) {
      return "range name is required example \"Sheet!A2:Z\"";
    }
    if (!user_data) {
      return "Usee data is required Please Read My docs, example msg.from.id";
    }
    if (!new_data_array) {
      return "new_data_array data is required Please Read My docs, example msg.from.id";
    }
    if (!range_name_update) {
      return "range_name_update is required Please Read My docs, example \"0\"";
    }
    if (!range_name_update0) {
      return "range_name_update0 is required Please Read My docs, example \"0\"";
    }
    var parameter = {
      auth: this.auth,
      spreadsheetId: this.sheet_id,
      range: range_name
    }
    var data = (await this.Sheets.spreadsheets.values.get(parameter)).data.values;
    if (!data) {
        return false;
    } else {
      for (var row = 0; row < data.length; row++) {
        var pola = new RegExp("^" + user_data + "$", "i");
        if (pola.exec(data[row][get_row_num])) {
          var rownum = row + 2;
          var datauser = [
            new_data_array
          ];
          var rangeName = range_name_update + rownum + ":" + range_name_update0 + rownum;
          var parameter = {
            auth: this.auth,
            spreadsheetId: this.sheet_id,
            range: rangeName,
            valueInputOption: "USER_ENTERED",
            resource: {
              values: datauser
            }
          }
          var result = this.Sheets.spreadsheets.values.update(parameter);
          return true
        }
      };
    }
  }



}


module.exports = { 
  GoogleSheets
}
