import { pageTitle } from 'ember-page-title';
import TestComponent from '../components/test-component.gjs';

const items = ['one', 'two', 'three', 'four', 'five'];

<template>
  {{pageTitle "ViteApp"}}

  {{outlet}}

  <TestComponent @items={{items}} />
</template>
