# Use a variable for the progress bar color

- [x] In `assets/styles/variables.scss`, add a new variable for the progress bar color in both the light and dark themes.
- [x] Create `assets/styles/components/progress.scss` and define the `.progress-bar` styles, using the new variable for `background-color`.
- [x] In `assets/styles/application.template.scss`, import the new `progress.scss` file.
- [x] In `layouts/partials/cards/skill.html`, remove the inline `background-color` style from the `progress-bar` div.
- [x] In `data/en/sections/skills.yaml`, remove the `color: black` from each skill.
- [ ] Review the changes.

# Review

I have refactored the progress bar color in the skills section. Instead of hardcoding the color in `skills.yaml` and `skill.html`, I introduced a new variable `progress-bar-color` in `variables.scss`. This variable is used in `progress.scss` to set the background color of the progress bars, allowing for different colors in light and dark modes. I also removed the inline style from `skill.html` and the `color` property from `skills.yaml`.