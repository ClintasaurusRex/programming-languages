module ProgrammingLanguagesHelper
  def render_programming_language_card(programming_language)
    render 'programming_language', programming_language: programming_language
  end

  def programming_language_action_links(programming_language)
    content_tag :div do
      concat link_to "View", programming_language_path(programming_language)
      concat link_to "Edit", edit_programming_language_path(programming_language)
      concat button_to "Delete", programming_language_path(programming_language), method: :delete, data: { confirm: "Are you sure?" }
    end
  end

  def show_programming_language_link(programming_language)
    link_to "Show this programming language", programming_language_path(programming_language)
  end
end
