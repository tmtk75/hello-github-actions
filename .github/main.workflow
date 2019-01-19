workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./action-hello"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""

  needs = ["ACTION-A", "ACTION-B"]

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

action "ACTION-B" {
  uses = "./action-a"
}

action "ACTION-B" {
  uses = "./action-b"
}
