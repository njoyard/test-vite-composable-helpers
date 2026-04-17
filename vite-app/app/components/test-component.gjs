import take from '@nullvoxpopuli/ember-composable-helpers/helpers/take'
import AddonComponent from 'my-addon/components/addon-component'

<template>
  <h1>First 3 items</h1>
  <ul>
    {{#each (take 3 @items) as |item|}}
      <li>{{item}}</li>
    {{/each}}
  </ul>
  <AddonComponent @items={{@items}} />
</template>
