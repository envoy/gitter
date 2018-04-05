class GitHubWebHookService
  def self.valid_types
    ['pull_request']
  end

  def self.valid_type?(type)
    valid
  end

  def self.process_webhook(type, params)

  end
end
