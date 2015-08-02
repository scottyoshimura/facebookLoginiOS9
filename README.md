# facebookLoginiOS9
an iOS swift application that successfully captures a user's basic account info from facebook, and stores it in parse. note, this app includes custom methods outside of the facebook provided methods to pass the user's facebook info to parse, because at this time (8.1.2015) parse doesn't work with the iOS 9 FB SDK. 

you will need to provide your own applicationID and key from parse to make this work, as well as configuring your plist with the appropriate information from your corresponding facebook application.

