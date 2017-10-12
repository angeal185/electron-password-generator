var gulp 	= require("gulp");
stylus 		= require("gulp-stylus");

gulp.task("stylus", function () {
  return gulp.src("development/style.styl")
    .pipe(stylus({
      compress: true
    }))
    .pipe(gulp.dest("app/css/"));
});