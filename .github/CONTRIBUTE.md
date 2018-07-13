# CONTRIBUTING

## Documentation

All new features **must** include documentation before they may be accepted and merged.

## Set Up

1. This project uses Docker
    * macOS: [Download Docker for Mac](https://www.docker.com/docker-mac)
    * Windows: [Download Docker for Windows](https://www.docker.com/docker-windows)
2. Install Docker and [Docker Toolbox](https://www.docker.com/toolbox)

## Running Coding Standards Checks

To run tests:

- Clone this repository:

```bash
$ git clone git@github.com:maspeng/docker-hub-cocoapods.git
```

- Or via HTTPS:

```bash
$ git clone https://github.com/maspeng/docker-hub-cocoapods.git
```

This component uses [hadolint](https://github.com/hadolint/hadolint) for coding standards checks, and provides configuration for our selected checks.

To build all container and running the checks:

```bash
$ make build
```

To build only one container and running the checks:

```bash
$ make 1.8
```

## Recommended Workflow for Contributions

Your first step is to establish a public repository from which we can pull your work into the master repository. We recommend using [GitHub](https://github.com), as that is where the component is already hosted.

1. Setup a [GitHub account](http://github.com/), if you haven't yet
2. Fork the repository (http://github.com/maspeng/docker-hub-cocoapods)
3. Clone the canonical repository locally and enter it.

```bash
$ git clone git://github.com/maspeng/docker-hub-cocoapods.git
$ cd docker-hub-cocoapods
```

4. Add a remote to your fork; substitute your GitHub username in the command below.

```bash
$ git remote add {username} git@github.com:{username}/docker-hub-cocoapods.git
$ git fetch {username}
```

### Keeping Up-to-Date

Periodically, you should update your fork or personal repository to match the canonical repository. Assuming you have setup your local repository per the instructions above, you can do the following:

```bash
$ git checkout master
$ git fetch origin
$ git rebase origin/master
# OPTIONALLY, to keep your remote up-to-date -
$ git push {username} master:master
```

If you're tracking other branches -- for example, the "develop" branch, where new feature development occurs -- you'll want to do the same operations for that branch; simply substitute  "develop" for "master".

### Working on a patch

We recommend you do each new feature or bugfix in a new branch. This simplifies the task of code review as well as the task of merging your changes into the canonical repository.

A typical workflow will then consist of the following:

1. Create a new local branch based off either your master or develop branch.
2. Switch to your new local branch. (This step can be combined with the previous step with the use of `git checkout -b`.)
3. Do some work, commit, repeat as necessary.
4. Push the local branch to your remote repository.
5. Send a pull request.

The mechanics of this process are actually quite trivial. Below, we will create a branch for fixing an issue in the tracker.

```bash
$ git checkout -b hotfix/1234
Switched to a new branch 'hotfix/1234'
```

... do some work ...

```bash
$ git commit
```

... write your log message ...

```bash
$ git push {username} hotfix/1234:hotfix/1234
Counting objects: 15, done.
Delta compression using up to 2 threads.
Compression objects: 100% (10/10), done.
Writing objects: 100% (12/12), 1.24KiB, done.
Total 15 (delta 12), reused 0 (delta 0)
To ssh://git@github.com/{username}/docker-hub-cocoapods.git
   b5442aa..f3g6a3fg  HEAD -> master
```

To send a pull request, you have two options.

If using GitHub, you can do the pull request from there. Navigate to your repository, select the branch you just created, and then select the "Pull Request" button in the upper right. Select the user/organization "maspeng" as the recipient.

If using your own repository - or even if using GitHub - you can use `git format-patch` to create a patchset for us to apply; in fact, this is **recommended** for security-related patches. If you use `format-patch`, please send the patches as attachments to: `MaSpeng@outlook.de`

#### What branch to issue the pull request against?

Which branch should you issue a pull request against?

- For fixes against the stable release, issue the pull request against the "master" branch.
- For new features, or fixes that introduce new elements to the public API (such as new public methods or properties), issue the pull request against the "develop" branch.

### Branch Cleanup

As you might imagine, if you are a frequent contributor, you'll start to get a ton of branches both locally and on your remote.

Once you know that your changes have been accepted to the master repository, we suggest doing some cleanup of these branches.

- Local branch cleanup

```bash
$ git branch -d <branchname>
```

- Remote branch removal

```bash
$ git push {username} :<branchname>
```

## Conduct

Please see our [CODE OF CONDUCT.md](CODE_OF_CONDUCT.md) to understand expected behavior when interacting with others in the project.
