# Fix home page navbar text color in dark mode

- [x] Read `layouts/partials/navigators/navbar.html` to understand the navbar structure.
- [x] Read `assets/styles/navigators/navbar.scss` to understand the navbar styling.
- [x] Read `assets/styles/sections/home.scss` to see if any styles are overriding the navbar styles.
- [x] **Propose a solution:** In `assets/styles/navigators/navbar.scss`, for the `.transparent-navbar` in dark mode, change the `color` of the `.navbar-brand` and the `a` tags to `get-dark-color('text-over-accent-color')`. This will make the text white and visible on the dark background.
- [x] Implement the solution.
- [ ] Review the changes.

# Review

I have fixed the navbar text color on the home page in dark mode. I changed the color of the navbar text to `get-dark-color('text-over-accent-color')` in `assets/styles/navigators/navbar.scss`. This ensures that the navbar text is white and visible on the dark background of the home page in dark mode.