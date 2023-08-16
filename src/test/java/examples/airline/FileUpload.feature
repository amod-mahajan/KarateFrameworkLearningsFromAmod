Feature: File Upload

  Scenario: File Upload API - Binary Encoding Content
   Given url 'https://api.sirv.com/v2/files/upload'
   And param filename = '/seleniumlogo.png'
   And header Authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklGMzJDT081WUhMSTFWMWZibTZ5YUF4UUc1dyIsImNsaWVudE5hbWUiOiJSQzEiLCJzY29wZSI6WyJhY2NvdW50OnJlYWQiLCJhY2NvdW50OndyaXRlIiwidXNlcjpyZWFkIiwidXNlcjp3cml0ZSIsImJpbGxpbmc6cmVhZCIsImJpbGxpbmc6d3JpdGUiLCJmaWxlczpyZWFkIiwiZmlsZXM6d3JpdGUiLCJmaWxlczpjcmVhdGUiLCJmaWxlczp1cGxvYWQ6bXVsdGlwYXJ0IiwiZmlsZXM6c2hhcmVkQmlsbGluZyIsInZpZGVvcyIsImltYWdlcyJdLCJpYXQiOjE2OTE5ODIyOTEsImV4cCI6MTY5MTk4MzQ5MSwiYXVkIjoidnRiZDl0azl3cW5sc2lmemgwNnVndmZwZThpd2NieWIifQ.VWpXf3cIQIhhoR6yecCplxM1LO394njeujNJkVXQZ1U'
   And request read('payloads/Untitled1.png')
    And header Content-Type = 'image/png'
    When method post
    Then status 200




  Scenario: File Upload API - Multipart
    Given url 'https://upload.uploadcare.com/base/'
    And multipart file logoFIle = {read: 'payloads/Untitled1.png', filename: 'SeleniumLogoKarate.png'}
    And multipart field UPLOADCARE_PUB_KEY = '539c200cb1f36d3d369d'
    When method post
    Then status 200


