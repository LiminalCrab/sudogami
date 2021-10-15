const { DateTime } = require("luxon");

module.exports = function (eleventyConfig) {
    
    //css targets 
    eleventyConfig.addPassthroughCopy("./src/links");
    eleventyConfig.addWatchTarget("./src/links");


    //favicons/media
    eleventyConfig.addPassthroughCopy("./src/media");
    eleventyConfig.addWatchTarget("./src/media");

    //travel gallery
    eleventyConfig.addPassthroughCopy("./src/travel/gallery");
    eleventyConfig.addWatchTarget("./src/travel/gallery");

    //travel video
    eleventyConfig.addPassthroughCopy("./src/travel/video");
    eleventyConfig.addWatchTarget("./src/travel/video");

    //date
    eleventyConfig.addFilter('htmlDateString', dateObj => {
        return DateTime.fromJSDate(dateObj).toFormat('yyyy/MM/dd TT');
    });

    eleventyConfig.addFilter('journalDateString', dateObj => {
        return DateTime.fromJSDate(dateObj).toFormat('yyyy/MM/dd');
    });

    return {
        dir: {
            input: "src",
            output: "public",
        }
    }
}