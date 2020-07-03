A test sinatra app for issuers using blockcerts wallet app. 
Easy to deploy on Heroku. 
1. Deploy to Heroku 
2. Get the introductionURL
3. Add introductionULR to the isser's json file. 
introductionUrl will be {herokuURL}/api/issuer_info.
4. Add the issuer info json file to public folder.
5. Open the blockcerts wallet app -> add issuer -> enter the introductionURL. (OTP can be anything)
6. Go to the log path on the heroku site and get the requestors public key. (NOT SAFE, this is just for demo)
