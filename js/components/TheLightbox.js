export default {
    name: 'TheLightboxComponent',

    props: ['item'],

    emits: ['closelightbox'],

    template: `
    <section class="lightbox">
        <!-- just to validate data - remove when working -->
        <pre>{{item}}</pre>
        <!-- end data validation -->


        <img @click="closeLB" src="images/closeIcon.png" class="lightbox_close">
        <!-- hero image on the left, text on the right -->
        <!-- her image is a background image -->
        <article>
           <h3 class="lb_heading">My work</h3>
            <p class="lb_text">
                Here are some of my work which I done and there many other which could put on my portfolio.
            </p>
            <p class="lb_text">
               some of the details of projects are stil here so you guys can some knowledge about my work
            </p>
        </article>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelightbox');
        }
    }
}