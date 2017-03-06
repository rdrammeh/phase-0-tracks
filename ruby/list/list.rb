class List 

  def initialize(items)
    @items = items
  end

  def get_items
    @items
  end

  def add_items(item)
    @item << list 
  end

  def delete_item(item)
    list.delete(@item)
  end

  def get_item(index)
    list.index(@item)
  end

end