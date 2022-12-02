import { SendMail } from "./components/mailer.js";
const phpData = document.getElementById("phpdata");

(() => {
    const { createApp } = Vue;

    createApp({
        data() {
            return {
                message: "Hello Vue!",
            };
        },

        methods: {
            processMailFailure(result) {
                let parsedResponse = JSON.parse(result.message).message;
                phpData.innerHTML = "";
                for (const message of parsedResponse) {
                    phpData.innerHTML += message + "<br>";
                }
            },

            processMailSuccess(result) {
                console.log(result);
                phpData.innerHTML = result.message;
                this.$refs.lastname.classList.add("noerror");
               // this.$refs.firstname.classList.add("noerror");
                this.$refs.email.classList.add("noerror");
                this.$refs.message.classList.add("noerror");
            },

            processMail(event) {
                SendMail(this.$el.parentNode)
                    .then((data) => this.processMailSuccess(data))
                    .catch((err) => this.processMailFailure(err));
            },
        },
    }).mount("#contactForm");
})();

// import components first!!
import HeroThumb from './components/TheHeroThumbnail.js';
import LightBox from './components/TheLightbox.js';

(() => {
    // create vue instance here
    const { createApp } = Vue

    createApp({
        created() {
            // ALWAYS get your remote data here
            fetch('./data.json')
                .then(res => res.json())
                .then(data => this.heroData = data)
            .catch(error => console.error(error));
        },

        data() {
            return {
                heroData: {},
                lbData: {},
                showLB: false
            }
        },

        components: {
            theherothumb: HeroThumb,
            thelightbox: LightBox
        },

        methods: {
            loadLightbox(hero) {
                this.lbData = hero;
                this.showLB = true;
            }
        }
    }).mount('#mainGallery')
})()



    