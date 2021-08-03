const { DateTime } = require("luxon");

module.exports = function (eleventyConfig) {
    
    //css targets 
    eleventyConfig.addPassthroughCopy("./src/links");
    eleventyConfig.addWatchTarget("./src/links");

    //favicons/media
    eleventyConfig.addPassthroughCopy("./src/media");
    eleventyConfig.addWatchTarget("./src/media");

    //date
    eleventyConfig.addFilter('htmlDateString', dateObj => {
        return DateTime.fromJSDate(dateObj).toFormat('yyyy/MM/dd TT');
    });

    return {
        dir: {
            input: "src",
            output: "public",
        }
    }
}