// add observers to all list items
function add_list_box_behavior_observers()
{
  var list_box_items = $$('div.list_item');
  for(var i = 0; i < list_box_items.length; i++) 
  {
    list_box_items[i].observe('click', function(event){ addSelectedItemClass(this) });
    list_box_items[i].observe('mouseover', function(event){ this.addClassName('hovered_item') });
    list_box_items[i].observe('mouseout', function(event){ this.removeClassName('hovered_item') });
  }
}
  
function addSelectedItemClass(element){
  // Unselect any line items selected
  var selected_items = $$('div.selected_item');
  for(var i = 0; i < selected_items.length; i++) 
  {
    selected_items[i].removeClassName('selected_item');
  } 
  // Add selected item class           
  element.addClassName('selected_item');
  // Remove hovered item class to avoid styling conflict
  element.removeClassName('hovered_item');
}