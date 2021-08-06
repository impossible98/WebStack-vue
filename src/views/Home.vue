<template>
  <div class="page-container">
    <div class="main-content">
      <div v-for="(item, idx) in items" :key="idx">
        <div>
          <h4 class="text-gray">
            <i class="linecons-tag" :id="item"></i>{{ item.name }}
          </h4>
          <div class="row">
            <div class="col-sm-3" v-for="(web, idx) in item.web" :key="idx">
              <div
                class="xe-widget xe-conversations box2 label-info"
                title=""
                @click="openweb(web.url)"
                data-toggle="tooltip"
                data-placement="bottom"
                :data-original-title="web.url"
              >
                <div class="xe-comment-entry">
                  <img :src="web.logo" class="lozad img-circle" width="40" />
                  <p>{{ web.title }}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import itemsData from "../../config/data.json";

export default {
  name: "Index",
  data() {
    return {
      items: itemsData,
    };
  },
  created() {},
  methods: {
    openweb(url) {
      window.open(url, "_blank");
    },
  },
};
</script>
