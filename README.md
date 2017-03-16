# RoQua Frontpage

Marketing website for RoQua

## Development

1. Checkout the latest master and make sure you have the gems installed and website builds properly.

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

4. Ensure it looks sexy

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

1. Download the latest build. Run command:

   ```bash
   rake roqua:download_build
   ```

   This will download and unzip the latest master build from Cirlce CI to `./builds/output`

2. Upload contents of `./builds/output` to your hosting provider.

If you have no credentials yet, ask Herman or Erwin to add your public key and(!) IP-address to Antagonist.

You can then SSH or SFTP to `roqua@roqua.nl`.
