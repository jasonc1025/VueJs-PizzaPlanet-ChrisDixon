import Firebase from 'firebase'

var config = {

};
const firebaseApp = Firebase.initializeApp(config);
const db = firebaseApp.database()
export const dbMenuRef = db.ref('menu')
export const dbOrdersRef = db.ref('orders')