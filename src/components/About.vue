<template>
<div>
  <p>Click on the links below for more info:</p>
  <nav class="navbar navbar-toggleable-md navbar-light">
    <ul class="navbar-nav">
      <router-link :to="{ name: 'historyLink' }" tag="li"><a class="nav-link">our history</a></router-link>
      <router-link :to="{ name: 'contactLink' }" tag="li"><a class="nav-link">contact us</a></router-link>
      <router-link :to="{ name: 'orderingGuideLink' }" tag="li"><a class="nav-link">ordering guide</a></router-link>
      <router-link :to="{ name: 'deliveryLink' }" tag="li"><a class="nav-link">delivery</a></router-link>
    </ul>
  </nav> 
  <router-view></router-view>
</div>
</template>