module.exports = function (eleventyConfig) {
    
    //css targets 
    eleventyConfig.addPassthroughCopy("./src/css");
    eleventyConfig.addWatchTarget("./src/css");

    return {
        dir: {
            input: "src",
            output: "public",
        }
    }
}