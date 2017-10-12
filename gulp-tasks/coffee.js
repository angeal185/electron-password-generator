var gulp = require('gulp'),
coffee = require('gulp-coffee');
 
gulp.task('coffee', function() {
  gulp.src('./development/coffee/app.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./app/js'));
});