#encoding: utf-8
module PartialPartials
  def spoof_request(uri,env_modifications={})
    call(env.merge("PATH_INFO" => uri).merge(env_modifications)).last.join
  end

  def partial(page, options={})
    haml page.to_sym, options.merge!(:layout => false)
  end  
end