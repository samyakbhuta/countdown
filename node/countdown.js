var announce = function() {
    console.log('Time is now!');
}

setTimeout(announce,process.argv[2]);


