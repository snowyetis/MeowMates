module ApplicationHelper

  def flash_class(level)
    case level
      when :notice then "info"
      when :error then "danger"
      when :alert then "danger"
    end
  end

  def resource_name

    :user

  end

  def resource

    @resource ||= User.new

  end

  def devise_mapping

    @devise_mapping ||= Devise.mappings[:user]

  end

end
