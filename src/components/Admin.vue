<template>
  <div> 
    <pp-admin-hidden v-if="currentUser"></pp-admin-hidden> 
    <hr>
    <div class="row">
      <div class="col-sm-12 col-lg-6">
        <pp-login></pp-login>
      </div>
    </div>
  </div>
</template>

<script>
import Login from './Login.vue'
import { mapGetters } from 'vuex'

//dynamic import
const AdminHidden = () => import('./AdminHidden.vue')

export default {
  components: {
    ppLogin: Login,
    ppAdminHidden: AdminHidden
  },
  computed: {
    ...mapGetters ([
      'currentUser'
    ])
  }
}
</script>

<style>
  .order-number {
    margin: 10px 0;
  }

</style>