

def clock (&time)
    x = Time.now.hour
    if x > 12
        x -= 12
    else
    end
    
    x.times{time.call}
    
  
end

clock{puts "DONG"}

$var = "   "

def log(des, &block)
    puts $var + "starting " + des
    yield
    puts $var + "done"
end

y = 5
log("stupid code") { log("motherfucker") {puts ($var*3) + "outer block finished"}; x = y + rand(5); puts ($var*2) + "doing something in block...number #{x}"}
