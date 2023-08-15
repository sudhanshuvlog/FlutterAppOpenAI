#!/bin/python3
print ("content: text/plain")
#print
print ()
("Access-Control-Allow-Origin: *")
import cgi
import openai
data_taker=cgi.FieldStorage ()
user_input=data_taker.getvalue ("user_input")
print("user_input")
openai.api_key = "<Key>" 
response = openai. Image.create (prompt=user_input, n=1, size="1024x1024") 
image_url = response['data'][0]['url']
print (image_url)