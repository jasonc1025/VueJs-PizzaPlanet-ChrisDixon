import Vue from 'vue'
import Vuex from 'vuex'

import menu from './modules/menu'
import orders from './modules/orders'
import users from './modules/users'
import { firebaseMutations } from 'vuexfire'

Vue.use(Vuex)

export const store = new Vuex.Store({
  mutations: { ...firebaseMutations },
  modules: {
    menu,
    orders,
    users
  }
})