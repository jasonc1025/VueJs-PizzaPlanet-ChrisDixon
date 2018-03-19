import Firebase from 'firebase'

var config = {
    // [jwc]+x Add Firebase Customization
    apiKey: "AIzaSyC2YkSfQY0F7YKxXCU1NR17IOQBuk6UDVs",
    authDomain: "pizzaplanet-vuejs-chrisd.firebaseapp.com",
    databaseURL: "https://pizzaplanet-vuejs-chrisd.firebaseio.com",
    projectId: "pizzaplanet-vuejs-chrisd",
    storageBucket: "pizzaplanet-vuejs-chrisd.appspot.com",
    messagingSenderId: "807451204942"
};
const firebaseApp = Firebase.initializeApp(config);
const db = firebaseApp.database()
export const dbMenuRef = db.ref('menu')
export const dbOrdersRef = db.ref('orders')