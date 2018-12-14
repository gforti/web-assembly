(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "_Z9factoriall" (func $_Z9factoriall))
 (export "_Z7squareri" (func $_Z7squareri))
 (func $_Z9factoriall (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $0)
     (i32.const 2)
    )
   )
   (set_local $2
    (i32.const 1)
   )
   (loop $label$1
    (set_local $2
     (i32.mul
      (get_local $0)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.gt_s
      (get_local $0)
      (i32.const 2)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const -1)
     )
    )
    (br_if $label$1
     (get_local $1)
    )
   )
  )
  (get_local $2)
 )
 (func $_Z7squareri (; 1 ;) (param $0 i32) (result i32)
  (i32.mul
   (get_local $0)
   (get_local $0)
  )
 )
)
