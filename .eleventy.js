module.exports = function (eleventyConfig) {
    
    //css targets 
    eleventyConfig.addPassthroughCopy("./src/links");
    eleventyConfig.addWatchTarget("./src/links");

    //favicons/media
    eleventyConfig.addPassthroughCopy("./src/media");
    eleventyConfig.addWatchTarget("./src/media");


    return {
        dir: {
            input: "src",
            output: "public",
        }
    }
}