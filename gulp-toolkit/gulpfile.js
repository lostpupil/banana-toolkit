var gulp = require("gulp");
var p = require('./package.json');
gulp.task('version', function() {
  console.log("version: "+p.version);
});

gulp.task('default', ['version']);
