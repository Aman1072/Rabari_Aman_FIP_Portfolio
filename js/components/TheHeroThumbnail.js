export default {
    name: "TheHeroThumb",

    emits: ['loadlbdata'],

    props: {
        hero: Object
    },

    template: `
    <section class="galleryImageCon" @click="loadLBData">
        <img :src='"images/" + hero.project_biopic' alt="hero img" style="width: 280px">
        <!--<video :src='"images/ + hero.project_biopic' alt="hero video" type="video/mp4" style="width: 220px" control>-->
        <!-- <div class="sprite" id="project-1"></div> -->
        <p></p>
        <h3>{{hero.project_name}}</h3>
    </section>
    `,

    methods: {
        loadLBData() {
            this.$emit('loadlbdata', this.hero);
        }
    }
}