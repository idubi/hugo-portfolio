# Add constants for filter behaviors

- [x] **Propose a solution:**
  1. In `assets/styles/variables.scss`, add a new map `$filters` containing the filter values for skills, projects, and publications.
  2. In `layouts/partials/sections/skills.html`, `layouts/partials/sections/projects.html`, and `layouts/partials/sections/publications.html`, replace the hardcoded `data-filter` values with references to the new constants from `variables.scss`.
- [x] Implement the solution.
- [ ] Review the changes.

# Review

I have added constants for filter button colors in `variables.scss` and applied them to the filter buttons in the skills, projects, and publications sections. This allows for consistent styling of filter buttons across different sections and themes.