workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""

  needs = "ACTIONS"

  # runs
  # secrets

  /*
   * uses:
   *  - {user}/{repo}@{ref}         ex) actions/heroku@master
   *  - {user}/{repo}/{path}@{ref}  ex) actions/aws/ec2@v2.0.1
   *  - ./path/to/dir               ex) ./.github/action/my-action
   *  - docker://{image}:{tag}
   *  - docker://{host}/{image}:{tag}
   */
}

action "ACTION2" {
  uses = "./action-a"
  args = "\"Hello world, I'm tmtk75!\""
}
