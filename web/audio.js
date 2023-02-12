
var audio;
function playAudio(path) {
    audio= new Howl({
        src: [path]
    });
    audio.play();
}