var gulp = require("gulp"),
requireDir("./gulp-tasks", {recurse: true});

//build
gulp.task("default", ["stylus","coffee"]);
