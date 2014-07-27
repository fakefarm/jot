class Menu
  def main
    commands = {
      d: :delete,
      m: :menu,
      i: :index,
      e: :edit,
    }
    commands.map { |k,option| print option.to_s + " | " }
    print "\n"
  end
end
