<template>
  <div class="page-container">
    <div class="main-content">
      <div v-for="(item, idx) in items" :key="idx">
        <div v-if="item.web">
          <WebItem :item="item" :transName="transName" />
        </div>
        <div v-else v-for="(subItem, idx) in item.children" :key="idx">
          <WebItem :item="subItem" :transName="transName" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import WebItem from '../components/WebItem.vue'
import itemsData from '../../config/data.json'

export default {
  name: 'Index',
  components: {
    WebItem
  },
  data() {
    return {
      items: itemsData,
      lang: {},
      langList: [
        {key: 'zh', name: '简体中文', flag: './assets/images/flags/flag-cn.png'},
        {key: 'en', name: 'English', flag: './assets/images/flags/flag-us.png'}
      ]
    }
  },
  created() {
    this.lang = this.langList[0]
  },
  methods: {
    transName(webItem) {
      return this.lang.key === 'en' ? webItem.en_name : webItem.name;
    }
  }
}
</script>
