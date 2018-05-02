class AlphabetController < UIViewController
  def viewDidLoad
    super

    self.title = "Alphabet"
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    self.view.addSubview @table
    @table.dataSource = self
    @table.delegate = self
    @data = ("A".."Z").to_a

  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    # Ellers bliver den row ved med at være markeret
    tableView.deselectRowAtIndexPath(indexPath, animated: true)

    alert = UIAlertView.alloc.init #Har ikke brug for nogen størrelse
    alert.message = "#{@data[indexPath.row]} tapped!"
    alert.addButtonWithTitle "Ok"
    alert.show
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"

    # Kigger efter, om der allerede er data gemt med identifieren! - hvis ikke, så lav en ny
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: @reuseIdentifier)
    end

    cell.textLabel.text = @data[indexPath.row]

    cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @data.count
  end
end
