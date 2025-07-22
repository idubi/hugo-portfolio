# Fix home page dark mode background

- [x] Read `assets/styles/variables.scss` to understand dark mode variables.
- [x] Read `assets/styles/sections/home.scss` to understand the home page styling.
- [x] Read `assets/styles/layouts/main.scss` to see the default page background.
- [x] **Propose a solution:** Add a `background-color` to the `.home` section in `home.scss` for dark mode. Specifically, `background-color: get-dark-color('bg-primary');` should be added to the `html[data-theme='dark'] .home` rule.
- [x] Implement the solution.
- [ ] Review the changes.

# Review

I have fixed the dark mode background on the home page to be consistent with the rest of the site. I added the `background-color: get-dark-color('bg-primary');` to the `.home` section in `home.scss` for the dark theme. This ensures that the home page has the same dark background as the other pages.