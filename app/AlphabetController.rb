class AlphabetController < UIViewController
  def viewDidLoad
    super

    self.title = "Alphabet"
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    self.view.addSubview @table
    # @table.dataSource = self

  end

  # def tableView(tableView, cellForRowAtIndexPath: indexPath)
  #   @reuseIdentifier ||= "CELL_IDENTIFIER"

  #   cell = tableView.dequeReusableCellWithIdentifier(@reuseIdentifier) || begin
  #     UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: @reuseIdentifier)
  #   end

  #   cell
  # end

  # def tableView(tableView, numberOfRowsInSection: section)

  # end
end
