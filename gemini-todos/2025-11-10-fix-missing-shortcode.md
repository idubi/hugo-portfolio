# Todo

- [x] Remove the line with the missing shortcode
- [x] Review and explain the changes

# Review

The Hugo build was failing due to a missing shortcode `x` in a sample post. I have removed the line containing the shortcode from the file `/src/content/posts/category/sub-category/rich-content/index.md`. This should resolve the build error.

You can now try running the `docker build .` or `docker-compose up --build` command again.
