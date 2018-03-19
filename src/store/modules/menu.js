import { firebaseAction } from 'vuexfire'

const state = {
  menuItems: []
}

const getters = {
  getMenuItems: state => state.menuItems  
}

const mutations = {

}

const actions = {
  setMenuRef: firebaseAction(({ bindFirebaseRef }, { ref }) => {
    bindFirebaseRef('menuItems', ref)
  })
}

export default {
  state,
  mutations,
  getters,
  actions
}