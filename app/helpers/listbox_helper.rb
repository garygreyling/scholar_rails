module ListboxHelper
  def list_box(object_array, options = {}, &block)
    concat "<div class=\'list_box #{html_class(object_array)}\'>"
    object_array.each do |object|
      concat "<div id=object_#{object.id} class=\'list_item\' onclick=\"#\">"
      yield object
      concat '</div>'
    end
    concat '</div>'
    concat javascript_tag('add_list_box_behavior_observers()')
  end
  
  def html_class(array)
    array.first.class.to_s.underscore.pluralize
  end
end