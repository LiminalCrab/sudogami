module.exports = function (eleventyConfig) {
    
    //css targets 
    eleventyConfig.addPassthroughCopy("./src/links");
    eleventyConfig.addWatchTarget("./src/links");

    return {
        dir: {
            input: "src",
            output: "public",
        }
    }
}