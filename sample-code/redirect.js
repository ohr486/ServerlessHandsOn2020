'use strict';

var aws = require('aws-sdk');
var docClient = new aws.DynamoDB.DocumentClient({
  apiVersion: '2012-08-10',
  region: 'ap-northeast-1'
});

module.exports.handler = async event => {
  var params = {
    TableName: 'YOUR DDB TABLE NAME', // DynamoDBテーブル名
    Key: {
      'id': 'YOUR KEY' // DynamoDB Key
    }
  };
  
  var result;
  try {
    result = await docClient.get(params).promise();
  }
  catch (e) {
    console.log(e);
    result = e;
  }
  
  return {
    //location: "https://www.google.co.jp",
    //location: "https://www.youtube.com/",
    location: result['Item']['url'],
  };
};
