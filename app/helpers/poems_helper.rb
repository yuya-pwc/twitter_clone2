module PoemsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'index'
      confirm_poems_path
    elsif action_name == 'edit'
      poem_path
    end
  end
end
