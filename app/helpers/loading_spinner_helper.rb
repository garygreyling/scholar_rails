module LoadingSpinnerHelper
  def toggle_loading_spinner
    return {:loading => "$('loading').show();$('contents_pane').hide();", :complete => "$('loading').hide();$('contents_pane').show();"}
  end
end