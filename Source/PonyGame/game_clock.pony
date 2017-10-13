use "time"

class val GameClock
  let _start_time: U64
  
  new val create() =>
    let time = Time
    let now = time.now()
    _start_time = time.nanos()
    
  fun elapsed_nanos(): U64 =>
    let time = Time
    time.nanos() - _start_time
    //time.wall_to_nanos(time.now()) - _start_time
     
  fun elapsed_millis(): U64 =>
    elapsed_nanos() / 1000000
