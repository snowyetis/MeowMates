class

CustomFailure < Devise::FailureApp
  def redirect_url
    # your redirect route goes here. let it be root_path:
    root_path
  end

  def respond
    if http_auth?
      http_auth
    else
      redirect
    end
  end

end