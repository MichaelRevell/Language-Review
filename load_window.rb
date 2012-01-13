framework 'AppKit'

class AppDelegate
  def applicationDidFinishLaunching(notification)
    # Do Nothing
  end
  
  def windowWillClose(notification)
    puts "Bye!"
    exit
  end
  
  def say_hello(sender)
    puts "Hello World!"
  end
end

app = NSApplication.sharedApplication
app.delegate = AppDelegate.new

window = NSWindow.alloc.initWithContentRect([200, 300, 300, 100],
    styleMask:NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask, 
    backing:NSBackingStoreBuffered, 
    defer:false)
window.title      = 'Your Korean Phrase'
window.level      = 3
window.delegate   = app.delegate

button = NSButton.alloc.initWithFrame([80, 10, 120, 80])
button.bezelStyle = 4
button.title      = '안영 - Hello'
button.target     = app.delegate
button.action     = 'say_hello:'

window.contentView.addSubview(button)


window.display
window.orderFrontRegardless
app.run