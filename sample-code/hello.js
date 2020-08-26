'use strict';

var aws = require('aws-sdk');
var docClient = new aws.DynamoDB.DocumentClient({
  apiVersion: '2012-08-10',
  region: 'ap-northeast-1'
});

module.exports.handler = async (event, context) => {
  var params = {
    TableName: 'YOUR TABLE NAME', // YOUR TABLE NAME
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
    statusCode: 200,
    body: JSON.stringify(
      {
        message: 'Go Serverless v1.0! Your function executed successfully!',
        input: event,
        data: result,
      },
      null,
      2
    ),
  };
};
