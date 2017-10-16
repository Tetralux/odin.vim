if exists("b:current_syntax")
  finish
endif

syntax keyword odinUsing using
syntax keyword odinTransmute transmute
syntax keyword odinVector vector

syntax keyword odinStruct struct
syntax keyword odinEnum enum
syntax keyword odinUnion union
syntax keyword odinBitField bit_field

syntax keyword odinIf if
syntax keyword odinElse else
syntax keyword odinFor for
syntax keyword odinSwitch switch
syntax keyword odinCase case
syntax keyword odinContinue continue
syntax keyword odinBreak break
syntax keyword odinSizeOf size_of
syntax keyword odinTypeOf type_info_of
syntax keyword odinAlignOf align_of

syntax keyword odinDataType string bool rune any rawptr f32 f64 u8 u16 u32 u64 u128 uint i8 i16 i32 i64 i128 int
syntax keyword odinBool true false
syntax keyword odinNull nil
syntax keyword odinDynamic dynamic
syntax keyword odinProc proc
syntax keyword odinIn in
syntax keyword odinImport import
syntax keyword odinExport export
syntax keyword odinForeign foreign
syntax keyword odinConst const
syntax match odinNoinit "---"

syntax keyword odinReturn return
syntax keyword odinDefer defer

syntax region odinString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match odinFunction "\v<\w*>(\s*::\s*)@="
syntax match odinDynamicFunction "\v<\w*(\s*:\=\s*\(.*\))@="

syntax match odinTagNote "@\<\w\+\>" display

syntax match odinClass "\v<[A-Z]\w+>" display
syntax match odinConstant "\v<[A-Z0-9,_]+>" display
syntax match odinRange "\.\." display
syntax match odinHalfRange "\.\.\<" display
syntax match odinTernaryQMark "?" display
syntax match odinDeclaration "\:\:\?" display
syntax match odinDeclAssign ":=" display
syntax match odinReturnOp "->" display

syntax match odinInteger "\-\?\<\d\+\>" display
syntax match odinFloat "\-\?\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display
syntax match odinHex "\-\?\<0x[0-9A-Fa-f]\+\>" display
syntax match odinAddressOf "&" display
syntax match odinDeref "\^" display

syntax match odinMacro "#\<\w\+\>" display

syntax match odinTemplate "$\<\w\+\>"

syntax match odinCommentNote "@\<\w\+\>" contained display
syntax match odinLineComment "//.*" contains=odinCommentNote
syntax region odinBlockComment start=/\v\/\*/ end=/\v\*\// contains=odinBlockComment, odinCommentNote

highlight link odinUsing Keyword
highlight link odinTransmute Keyword
highlight link odinVector Keyword
highlight link odinReturn Keyword
highlight link odinSwitch Keyword
highlight link odinCase Keyword
highlight link odinProc Keyword
highlight link odinIn Keyword
highlight link odinContinue Keyword
highlight link odinBreak Keyword
highlight link odinSizeOf Keyword
highlight link odinTypeOf Keyword
highlight link odinAlignOf Keyword

highlight link odinImport Keyword
highlight link odinExport Keyword
highlight link odinForeign Keyword
highlight link odinNoinit Keyword

highlight link odinDefer Operator
highlight link odinDynamic Operator
highlight link odinRange Operator
highlight link odinHalfRange Operator
highlight link odinAssign Operator
highlight link odinAddressOf Operator
highlight link odinDeref Operator

highlight link odinDeclaration Operator
highlight link odinDeclAssign Operator
highlight link odinAssign Operator
highlight link odinTernaryQMark Operator
highlight link odinReturnOp Operator

highlight link odinString String

highlight link odinStruct Structure
highlight link odinEnum Structure
highlight link odinUnion Structure
highlight link odinBitField Structure

highlight link odinFunction Function
highlight link odinDynamicFunction Function

highlight link odinMacro Macro
highlight link odinIf Conditional
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
