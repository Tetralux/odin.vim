if exists("b:current_syntax")
  finish
endif

syntax keyword odinUsing using
syntax keyword odinNew new
syntax keyword odinDelete delete
syntax keyword odinCast cast
syntax keyword odinVector vector

syntax keyword odinStruct struct
syntax keyword odinEnum enum
syntax keyword odinUnion union

syntax keyword odinIf if
syntax keyword odinThen then
syntax keyword odinElse else
syntax keyword odinFor for
syntax keyword odinMatch match
syntax keyword odinCase case
syntax keyword odinDefault default
syntax keyword odinContinue continue
syntax keyword odinBreak break
syntax keyword odinSizeOf size_of
syntax keyword odinSizeOfVal size_of_val
syntax keyword odinTypeOf type_info
syntax keyword odinTypeOfVal type_info_of_val
syntax keyword odinAlignOf align_of

syntax keyword odinDataType void string int float f32 f64 u8 u16 u32 u64 i8 i16 i32 i64 bool rawptr
syntax keyword odinBool true false
syntax keyword odinNull nil
syntax keyword odinDynamic dynamic
syntax keyword odinProc proc
syntax keyword odinIn in

syntax keyword odinReturn return
syntax keyword odinDefer defer

syntax keyword odinInline inline
syntax keyword odinNoInline no_inline

syntax region odinString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match odinFunction "\v<\w*>(\s*::\s*)@="
syntax match odinDynamicFunction "\v<\w*(\s*:\=\s*\(.*\))@="

syntax match odinTagNote "@\<\w\+\>" display

syntax match odinClass "\v<[A-Z]\w+>" display
syntax match odinConstant "\v<[A-Z0-9,_]+>" display
syntax match odinRange "\.\." display
syntax match odinTernaryQMark "?" display
syntax match odinDeclaration "\:\:\?" display
syntax match odinDeclAssign ":=" display
syntax match odinReturnOp "->" display

syntax match odinInteger "\-\?\<\d\+\>" display
syntax match odinFloat "\-\?\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syntax match odinHex "\-\?\<0x[0-9A-Fa-f]\+\>" display
syntax match odinAddressOf "\^" display

syntax match odinMacro "#\<\w\+\>" display

syntax match odinTemplate "$\<\w\+\>"

syntax match odinCommentNote "@\<\w\+\>" contained display
syntax match odinLineComment "//.*" contains=odinCommentNote
syntax region odinBlockComment start=/\v\/\*/ end=/\v\*\// contains=odinBlockComment, odinCommentNote

highlight link odinUsing Keyword
highlight link odinNew Keyword
highlight link odinCast Keyword
highlight link odinVector Keyword
highlight link odinDelete Keyword
highlight link odinReturn Keyword
highlight link odinMatch Keyword
highlight link odinCase Keyword
highlight link odinDefault Keyword
highlight link odinProc Keyword
highlight link odinIn Keyword
highlight link odinContinue Keyword
highlight link odinBreak Keyword
highlight link odinSizeOf Keyword
highlight link odinSizeOfVal Keyword
highlight link odinTypeOf Keyword
highlight link odinTypeOfVal Keyword
highlight link odinAlignOf Keyword

highlight link odinDefer Operator
highlight link odinDynamic Operator
highlight link odinRange Operator
highlight link odinAssign Operator
highlight link odinAddressOf Operator

highlight link odinDeclaration Operator
highlight link odinDeclAssign Operator
highlight link odinAssign Operator
highlight link odinTernaryQMark Operator
highlight link odinReturnOp Operator
highlight link odinInline Keyword
highlight link odinNoInline Keyword

highlight link odinString String

highlight link odinStruct Structure
highlight link odinEnum Structure
highlight link odinUnion Structure

highlight link odinFunction Function
highlight link odinDynamicFunction Function

highlight link odinMacro Macro
highlight link odinIf Conditional
highlight link odinThen Conditional
highlight link odinElse Conditional
highlight link odinFor Repeat

highlight link odinLineComment Comment
highlight link odinBlockComment Comment
highlight link odinCommentNote Todo

highlight link odinClass Type

highlight link odinTemplate Constant

highlight link odinTagNote Identifier
highlight link odinDataType Type
highlight link odinBool Boolean
highlight link odinConstant Constant
highlight link odinNull Type
highlight link odinInteger Number
highlight link odinFloat Float
highlight link odinHex Number

let b:current_syntax = "odin"
