class GithubWebHookController < ApplicationController
  def process_webhook
    type = request.headers['X-GitHub-Event']

    result = GitHubWebHookService.process_webhook(type, params)
  end
end
