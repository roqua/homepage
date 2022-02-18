# RoQua Frontpage

Marketing website for RoQua

## Development

1. Checkout the latest master and make sure you have the gems installed and website builds properly (You might run `brew install node` if nanoc complains about missing JavaScript Runtime).

   ```bash
   git pull origin master
   bundle install
   bundle exec nanoc compile
   ```

2. Start the new branch

   ```bash
   git checkout -b new-job-opening
   ```

3. Work on your branch. Make sure it builds properly. Tip: You can use guard to do compiling for you.

   ```bash
   bundle exec guard
   ```

4. Ensure it looks good

   ```bash
   bundle exec nanoc view
   open http://localhost:3000
   ```

5. Push your branch when done.

   ```bash
   git push -u origin new-job-opening
   ```

6. Create a new [Pull Request](https://github.com/roqua/roqua_frontpage/compare).

7. Wait until Circle CI is done building.

8. Merge when your changes look good to your team.

## Deployment

Gitlab CI automatically deploys from the primary branch.
