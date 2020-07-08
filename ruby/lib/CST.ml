(* Generated by ocaml-tree-sitter. *)
(*
   ruby grammar

   entrypoint: program
*)

open! Sexplib.Conv
open Tree_sitter_run

type uninterpreted = Token.t (* pattern (.|\s)* *)
[@@deriving sexp_of]

type binary_star = Token.t
[@@deriving sexp_of]

type singleton_class_left_angle_left_langle = Token.t
[@@deriving sexp_of]

type instance_variable = Token.t
[@@deriving sexp_of]

type binary_minus = Token.t
[@@deriving sexp_of]

type simple_symbol = Token.t
[@@deriving sexp_of]

type complex = Token.t (* pattern (\d+)?(\+|-)?(\d+)i *)
[@@deriving sexp_of]

type character =
  Token.t (* pattern \?(\\\S({[0-9]*}|[0-9]*|-\S([MC]-\S)?)?|\S) *)
[@@deriving sexp_of]

type escape_sequence = Token.t
[@@deriving sexp_of]

type false_ = [
    `False_false of Token.t (* "false" *)
  | `False_FALSE of Token.t (* "FALSE" *)
]
[@@deriving sexp_of]

type subshell_start = Token.t
[@@deriving sexp_of]

type regex_start = Token.t
[@@deriving sexp_of]

type constant = Token.t
[@@deriving sexp_of]

type symbol_start = Token.t
[@@deriving sexp_of]

type unary_minus = Token.t
[@@deriving sexp_of]

type block_ampersand = Token.t
[@@deriving sexp_of]

type class_variable = Token.t
[@@deriving sexp_of]

type string_array_start = Token.t
[@@deriving sexp_of]

type splat_star = Token.t
[@@deriving sexp_of]

type integer =
  Token.t (* pattern 0[bB][01](_?[01])*|0[oO]?[0-7](_?[0-7])*|(0[dD])?\d(_?\d)*|0x[0-9a-fA-F](_?[0-9a-fA-F])* *)
[@@deriving sexp_of]

type heredoc_content = Token.t
[@@deriving sexp_of]

type string_end = Token.t
[@@deriving sexp_of]

type line_break = Token.t
[@@deriving sexp_of]

type identifier = Token.t
[@@deriving sexp_of]

type string_content = Token.t
[@@deriving sexp_of]

type heredoc_end = Token.t
[@@deriving sexp_of]

type nil = [
    `Nil_nil of Token.t (* "nil" *)
  | `Nil_NIL of Token.t (* "NIL" *)
]
[@@deriving sexp_of]

type heredoc_beginning = Token.t
[@@deriving sexp_of]

type float_ =
  Token.t (* pattern \d(_?\d)*(\.\d)?(_?\d)*([eE][\+-]?\d(_?\d)*\
  )? *)
[@@deriving sexp_of]

type global_variable =
  Token.t (* pattern "\\$-?(([!@&`'+~=\\/\\\\,;.<>*$?:\"])|([0-9]*\
  )|([a-zA-Z_][a-zA-Z0-9_]*\
  ))" *)
[@@deriving sexp_of]

type symbol_array_start = Token.t
[@@deriving sexp_of]

type heredoc_body_start = Token.t
[@@deriving sexp_of]

type operator = [
    `Op_DOTDOT of Token.t (* ".." *)
  | `Op_BAR of Token.t (* "|" *)
  | `Op_HAT of Token.t (* "^" *)
  | `Op_AMP of Token.t (* "&" *)
  | `Op_LTEQGT of Token.t (* "<=>" *)
  | `Op_EQEQ of Token.t (* "==" *)
  | `Op_EQEQEQ of Token.t (* "===" *)
  | `Op_EQTILDE of Token.t (* "=~" *)
  | `Op_GT of Token.t (* ">" *)
  | `Op_GTEQ of Token.t (* ">=" *)
  | `Op_LT of Token.t (* "<" *)
  | `Op_LTEQ of Token.t (* "<=" *)
  | `Op_PLUS of Token.t (* "+" *)
  | `Op_DASH of Token.t (* "-" *)
  | `Op_STAR of Token.t (* "*" *)
  | `Op_SLASH of Token.t (* "/" *)
  | `Op_PERC of Token.t (* "%" *)
  | `Op_BANG of Token.t (* "!" *)
  | `Op_BANGTILDE of Token.t (* "!~" *)
  | `Op_STARSTAR of Token.t (* "**" *)
  | `Op_LTLT of Token.t (* "<<" *)
  | `Op_GTGT of Token.t (* ">>" *)
  | `Op_TILDE of Token.t (* "~" *)
  | `Op_PLUSAT of Token.t (* "+@" *)
  | `Op_DASHAT of Token.t (* "-@" *)
  | `Op_LBRACKRBRACK of Token.t (* "[]" *)
  | `Op_LBRACKRBRACKEQ of Token.t (* "[]=" *)
  | `Op_BQUOT of Token.t (* "`" *)
]
[@@deriving sexp_of]

type true_ = [
    `True_true of Token.t (* "true" *)
  | `True_TRUE of Token.t (* "TRUE" *)
]
[@@deriving sexp_of]

type string_start = Token.t
[@@deriving sexp_of]

type identifier_hash_key = Token.t
[@@deriving sexp_of]

type terminator = [
    `Term_line_brk of line_break (*tok*)
  | `Term_SEMI of Token.t (* ";" *)
]
[@@deriving sexp_of]

type variable = [
    `Self of Token.t (* "self" *)
  | `Super of Token.t (* "super" *)
  | `Inst_var of instance_variable (*tok*)
  | `Class_var of class_variable (*tok*)
  | `Glob_var of global_variable (*tok*)
  | `Id of identifier (*tok*)
  | `Cst of constant (*tok*)
]
[@@deriving sexp_of]

type do_ = [ `Do_do of Token.t (* "do" *) | `Do_term of terminator ]
[@@deriving sexp_of]

type statements = [
    `Stmts_rep1_choice_stmt_term_opt_stmt of (
        [
            `Stmt_term of (statement * terminator)
          | `Empty_stmt of Token.t (* ";" *)
        ]
          list (* one or more *)
      * statement option
    )
  | `Stmts_stmt of statement
]
and statement = [
    `Stmt_undef of (
        Token.t (* "undef" *)
      * method_name
      * (Token.t (* "," *) * method_name) list (* zero or more *)
    )
  | `Stmt_alias of (Token.t (* "alias" *) * method_name * method_name)
  | `Stmt_if_modi of (statement * Token.t (* "if" *) * expression)
  | `Stmt_unle_modi of (statement * Token.t (* "unless" *) * expression)
  | `Stmt_while_modi of (statement * Token.t (* "while" *) * expression)
  | `Stmt_until_modi of (statement * Token.t (* "until" *) * expression)
  | `Stmt_resc_modi of (statement * Token.t (* "rescue" *) * expression)
  | `Stmt_begin_blk of (
        Token.t (* "BEGIN" *)
      * Token.t (* "{" *)
      * statements option
      * Token.t (* "}" *)
    )
  | `Stmt_end_blk of (
        Token.t (* "END" *)
      * Token.t (* "{" *)
      * statements option
      * Token.t (* "}" *)
    )
  | `Stmt_exp of expression
]
and method_rest = (
    method_name
  * [
        `Params_opt_term of (parameters * terminator option)
      | `Opt_bare_params_term of (bare_parameters option * terminator)
    ]
  * body_statement
)
and parameters = (
    Token.t (* "(" *)
  * (
        formal_parameter
      * (Token.t (* "," *) * formal_parameter) list (* zero or more *)
    )
      option
  * Token.t (* ")" *)
)
and bare_parameters = (
    simple_formal_parameter
  * (Token.t (* "," *) * formal_parameter) list (* zero or more *)
)
and block_parameters = (
    Token.t (* "|" *)
  * (
        formal_parameter
      * (Token.t (* "," *) * formal_parameter) list (* zero or more *)
    )
      option
  * Token.t (* "," *) option
  * (
        Token.t (* ";" *)
      * identifier (*tok*)
      * (Token.t (* "," *) * identifier (*tok*)) list (* zero or more *)
    )
      option
  * Token.t (* "|" *)
)
and formal_parameter = [
    `Form_param_simple_form_param of simple_formal_parameter
  | `Form_param_params of parameters
]
and simple_formal_parameter = [
    `Simple_form_param_id of identifier (*tok*)
  | `Simple_form_param_splat_param of (
        Token.t (* "*" *)
      * identifier (*tok*) option
    )
  | `Simple_form_param_hash_splat_param of (
        Token.t (* "**" *)
      * identifier (*tok*) option
    )
  | `Simple_form_param_blk_param of (Token.t (* "&" *) * identifier (*tok*))
  | `Simple_form_param_kw_param of (
        identifier (*tok*)
      * Token.t (* ":" *)
      * arg option
    )
  | `Simple_form_param_opt_param of (
        identifier (*tok*) * Token.t (* "=" *) * arg
    )
]
and superclass = (Token.t (* "<" *) * arg)
and in_ = (Token.t (* "in" *) * arg)
and when_ = (
    Token.t (* "when" *)
  * pattern
  * (Token.t (* "," *) * pattern) list (* zero or more *)
  * [ `Term of terminator | `Then of then_ ]
)
and pattern = [ `Pat_arg of arg | `Pat_splat_arg of splat_argument ]
and elsif = (
    Token.t (* "elsif" *)
  * statement
  * [ `Term of terminator | `Then of then_ ]
  * [ `Else of else_ | `Elsif of elsif ] option
)
and else_ = (Token.t (* "else" *) * terminator option * statements option)
and then_ = [
    `Then_term_stmts of (terminator * statements)
  | `Then_opt_term_then_opt_stmts of (
        terminator option
      * Token.t (* "then" *)
      * statements option
    )
]
and ensure = (Token.t (* "ensure" *) * statements option)
and rescue = (
    Token.t (* "rescue" *)
  * exceptions option
  * exception_variable option
  * [ `Term of terminator | `Then of then_ ]
)
and exceptions = (
    [ `Arg of arg | `Splat_arg of splat_argument ]
  * (Token.t (* "," *) * [ `Arg of arg | `Splat_arg of splat_argument ])
      list (* zero or more *)
)
and exception_variable = (Token.t (* "=>" *) * lhs)
and body_statement = (
    statements option
  * [ `Resc of rescue | `Else of else_ | `Ensu of ensure ]
      list (* zero or more *)
  * Token.t (* "end" *)
)
and expression = [
    `Exp_cmd_bin of (
        expression
      * [ `Or of Token.t (* "or" *) | `And of Token.t (* "and" *) ]
      * expression
    )
  | `Exp_cmd_assign of command_assignment
  | `Exp_cmd_op_assign of (
        lhs
      * [
            `PLUSEQ of Token.t (* "+=" *)
          | `DASHEQ of Token.t (* "-=" *)
          | `STAREQ of Token.t (* "*=" *)
          | `STARSTAREQ of Token.t (* "**=" *)
          | `SLASHEQ of Token.t (* "/=" *)
          | `BARBAREQ of Token.t (* "||=" *)
          | `BAREQ of Token.t (* "|=" *)
          | `AMPAMPEQ of Token.t (* "&&=" *)
          | `AMPEQ of Token.t (* "&=" *)
          | `PERCEQ of Token.t (* "%=" *)
          | `GTGTEQ of Token.t (* ">>=" *)
          | `LTLTEQ of Token.t (* "<<=" *)
          | `HATEQ of Token.t (* "^=" *)
        ]
      * expression
    )
  | `Exp_cmd_call of command_call
  | `Exp_ret_cmd of (Token.t (* "return" *) * command_argument_list)
  | `Exp_yield_cmd of (Token.t (* "yield" *) * command_argument_list)
  | `Exp_brk_cmd of (Token.t (* "break" *) * command_argument_list)
  | `Exp_next_cmd of (Token.t (* "next" *) * command_argument_list)
  | `Exp_arg of arg
]
and arg = [
    `Arg_prim of primary
  | `Arg_assign of assignment
  | `Arg_op_assign of (
        lhs
      * [
            `PLUSEQ of Token.t (* "+=" *)
          | `DASHEQ of Token.t (* "-=" *)
          | `STAREQ of Token.t (* "*=" *)
          | `STARSTAREQ of Token.t (* "**=" *)
          | `SLASHEQ of Token.t (* "/=" *)
          | `BARBAREQ of Token.t (* "||=" *)
          | `BAREQ of Token.t (* "|=" *)
          | `AMPAMPEQ of Token.t (* "&&=" *)
          | `AMPEQ of Token.t (* "&=" *)
          | `PERCEQ of Token.t (* "%=" *)
          | `GTGTEQ of Token.t (* ">>=" *)
          | `LTLTEQ of Token.t (* "<<=" *)
          | `HATEQ of Token.t (* "^=" *)
        ]
      * arg
    )
  | `Arg_cond of (arg * Token.t (* "?" *) * arg * Token.t (* ":" *) * arg)
  | `Arg_range of (
        arg
      * [ `DOTDOT of Token.t (* ".." *) | `DOTDOTDOT of Token.t (* "..." *) ]
      * arg
    )
  | `Arg_bin of binary
  | `Arg_un of unary
]
and primary = [
    `Prim_paren_stmts of parenthesized_statements
  | `Prim_lhs of lhs
  | `Prim_array of (
        Token.t (* "[" *)
      * argument_list_with_trailing_comma option
      * Token.t (* "]" *)
    )
  | `Prim_str_array of (
        string_array_start (*tok*)
      * unit (* blank *) option
      * (
            literal_contents
          * (unit (* blank *) * literal_contents) list (* zero or more *)
        )
          option
      * unit (* blank *) option
      * string_end (*tok*)
    )
  | `Prim_symb_array of (
        symbol_array_start (*tok*)
      * unit (* blank *) option
      * (
            literal_contents
          * (unit (* blank *) * literal_contents) list (* zero or more *)
        )
          option
      * unit (* blank *) option
      * string_end (*tok*)
    )
  | `Prim_hash of (
        Token.t (* "{" *)
      * (
            [ `Pair of pair | `Hash_splat_arg of hash_splat_argument ]
          * (
                Token.t (* "," *)
              * [ `Pair of pair | `Hash_splat_arg of hash_splat_argument ]
            )
              list (* zero or more *)
          * Token.t (* "," *) option
        )
          option
      * Token.t (* "}" *)
    )
  | `Prim_subs of (
        subshell_start (*tok*)
      * literal_contents option
      * string_end (*tok*)
    )
  | `Prim_symb of symbol
  | `Prim_int of integer (*tok*)
  | `Prim_float of float_ (*tok*)
  | `Prim_comp of complex (*tok*)
  | `Prim_rati of (integer (*tok*) * Token.t (* "r" *))
  | `Prim_str of string_
  | `Prim_char of character (*tok*)
  | `Prim_chai_str of (string_ * string_ list (* one or more *))
  | `Prim_regex of (
        regex_start (*tok*)
      * literal_contents option
      * string_end (*tok*)
    )
  | `Prim_lamb of (
        Token.t (* "->" *)
      * [ `Params of parameters | `Bare_params of bare_parameters ] option
      * [ `Blk of block | `Do_blk of do_block ]
    )
  | `Prim_meth of (Token.t (* "def" *) * method_rest)
  | `Prim_sing_meth of (
        Token.t (* "def" *)
      * [
            `Var of variable
          | `LPAR_arg_RPAR of (Token.t (* "(" *) * arg * Token.t (* ")" *))
        ]
      * [ `DOT of Token.t (* "." *) | `COLONCOLON of Token.t (* "::" *) ]
      * method_rest
    )
  | `Prim_class of (
        Token.t (* "class" *)
      * [ `Cst of constant (*tok*) | `Scope_resol of scope_resolution ]
      * superclass option
      * terminator
      * body_statement
    )
  | `Prim_sing_class of (
        Token.t (* "class" *)
      * singleton_class_left_angle_left_langle (*tok*) * arg * terminator
      * body_statement
    )
  | `Prim_modu of (
        Token.t (* "module" *)
      * [ `Cst of constant (*tok*) | `Scope_resol of scope_resolution ]
      * [
            `Term_body_stmt of (terminator * body_statement)
          | `End of Token.t (* "end" *)
        ]
    )
  | `Prim_begin of (
        Token.t (* "begin" *)
      * terminator option
      * body_statement
    )
  | `Prim_while of (
        Token.t (* "while" *)
      * arg
      * do_
      * statements option
      * Token.t (* "end" *)
    )
  | `Prim_until of (
        Token.t (* "until" *)
      * arg
      * do_
      * statements option
      * Token.t (* "end" *)
    )
  | `Prim_if of (
        Token.t (* "if" *)
      * statement
      * [ `Term of terminator | `Then of then_ ]
      * [ `Else of else_ | `Elsif of elsif ] option
      * Token.t (* "end" *)
    )
  | `Prim_unle of (
        Token.t (* "unless" *)
      * statement
      * [ `Term of terminator | `Then of then_ ]
      * [ `Else of else_ | `Elsif of elsif ] option
      * Token.t (* "end" *)
    )
  | `Prim_for of (
        Token.t (* "for" *)
      * mlhs
      * in_
      * do_
      * statements option
      * Token.t (* "end" *)
    )
  | `Prim_case of (
        Token.t (* "case" *)
      * arg option
      * terminator
      * Token.t (* ";" *) list (* zero or more *)
      * when_ list (* zero or more *)
      * else_ option
      * Token.t (* "end" *)
    )
  | `Prim_ret of (Token.t (* "return" *) * argument_list option)
  | `Prim_yield of (Token.t (* "yield" *) * argument_list option)
  | `Prim_brk of (Token.t (* "break" *) * argument_list option)
  | `Prim_next of (Token.t (* "next" *) * argument_list option)
  | `Prim_redo of (Token.t (* "redo" *) * argument_list option)
  | `Prim_retry of (Token.t (* "retry" *) * argument_list option)
  | `Prim_paren_un of (
        [ `Defi of Token.t (* "defined?" *) | `Not of Token.t (* "not" *) ]
      * parenthesized_statements
    )
  | `Prim_un_lit of (
        [ `Un_minus of unary_minus (*tok*) | `PLUS of Token.t (* "+" *) ]
      * [ `Int of integer (*tok*) | `Float of float_ (*tok*) ]
    )
  | `Prim_here_begin of heredoc_beginning (*tok*)
]
and parenthesized_statements = (
    Token.t (* "(" *)
  * statements option
  * Token.t (* ")" *)
)
and scope_resolution = (
    [
        `COLONCOLON of Token.t (* "::" *)
      | `Prim_COLONCOLON of (primary * Token.t (* "::" *))
    ]
  * [ `Id of identifier (*tok*) | `Cst of constant (*tok*) ]
)
and call = (
    primary
  * [ `DOT of Token.t (* "." *) | `AMPDOT of Token.t (* "&." *) ]
  * [
        `Id of identifier (*tok*)
      | `Op of operator
      | `Cst of constant (*tok*)
      | `Arg_list of argument_list
    ]
)
and command_call = [
    `Cmd_call_choice_var_cmd_arg_list of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * command_argument_list
    )
  | `Cmd_call_choice_var_cmd_arg_list_blk of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * command_argument_list
      * block
    )
  | `Cmd_call_choice_var_cmd_arg_list_do_blk of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * command_argument_list
      * do_block
    )
]
and method_call = [
    `Meth_call_choice_var_arg_list of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * argument_list
    )
  | `Meth_call_choice_var_arg_list_blk of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * argument_list
      * block
    )
  | `Meth_call_choice_var_arg_list_do_blk of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * argument_list
      * do_block
    )
  | `Meth_call_choice_var_blk of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * block
    )
  | `Meth_call_choice_var_do_blk of (
        [
            `Var of variable
          | `Scope_resol of scope_resolution
          | `Call of call
        ]
      * do_block
    )
]
and command_argument_list = [
    `Cmd_arg_list_arg_rep_COMMA_arg of (
        argument
      * (Token.t (* "," *) * argument) list (* zero or more *)
    )
  | `Cmd_arg_list_cmd_call of command_call
]
and argument_list = (
    Token.t (* "(" *)
  * argument_list_with_trailing_comma option
  * Token.t (* ")" *)
)
and argument_list_with_trailing_comma = (
    argument
  * (Token.t (* "," *) * argument) list (* zero or more *)
  * Token.t (* "," *) option
)
and argument = [
    `Arg_arg of arg
  | `Arg_splat_arg of splat_argument
  | `Arg_hash_splat_arg of hash_splat_argument
  | `Arg_blk_arg of (block_ampersand (*tok*) * arg)
  | `Arg_pair of pair
]
and splat_argument = (splat_star (*tok*) * arg)
and hash_splat_argument = (Token.t (* "**" *) * arg)
and do_block = (
    Token.t (* "do" *)
  * terminator option
  * (block_parameters * terminator option) option
  * body_statement
)
and block = (
    Token.t (* "{" *)
  * block_parameters option
  * statements option
  * Token.t (* "}" *)
)
and assignment = [
  `Choice_lhs_EQ_choice_arg of (
      [ `Lhs of lhs | `Left_assign_list of left_assignment_list ]
    * Token.t (* "=" *)
    * [
          `Arg of arg
        | `Splat_arg of splat_argument
        | `Right_assign_list of right_assignment_list
      ]
  )
]
and command_assignment = [
  `Choice_lhs_EQ_exp of (
      [ `Lhs of lhs | `Left_assign_list of left_assignment_list ]
    * Token.t (* "=" *)
    * expression
  )
]
and binary = [
    `Bin_arg_and_arg of (arg * Token.t (* "and" *) * arg)
  | `Bin_arg_or_arg of (arg * Token.t (* "or" *) * arg)
  | `Bin_arg_BARBAR_arg of (arg * Token.t (* "||" *) * arg)
  | `Bin_arg_AMPAMP_arg of (arg * Token.t (* "&&" *) * arg)
  | `Bin_arg_choice_LTLT_arg of (
        arg
      * [ `LTLT of Token.t (* "<<" *) | `GTGT of Token.t (* ">>" *) ]
      * arg
    )
  | `Bin_arg_choice_LT_arg of (
        arg
      * [
            `LT of Token.t (* "<" *)
          | `LTEQ of Token.t (* "<=" *)
          | `GT of Token.t (* ">" *)
          | `GTEQ of Token.t (* ">=" *)
        ]
      * arg
    )
  | `Bin_arg_AMP_arg of (arg * Token.t (* "&" *) * arg)
  | `Bin_arg_choice_HAT_arg of (
        arg
      * [ `HAT of Token.t (* "^" *) | `BAR of Token.t (* "|" *) ]
      * arg
    )
  | `Bin_arg_choice_PLUS_arg of (
        arg
      * [ `PLUS of Token.t (* "+" *) | `Bin_minus of binary_minus (*tok*) ]
      * arg
    )
  | `Bin_arg_choice_SLASH_arg of (
        arg
      * [
            `SLASH of Token.t (* "/" *)
          | `PERC of Token.t (* "%" *)
          | `Bin_star of binary_star (*tok*)
        ]
      * arg
    )
  | `Bin_arg_choice_EQEQ_arg of (
        arg
      * [
            `EQEQ of Token.t (* "==" *)
          | `BANGEQ of Token.t (* "!=" *)
          | `EQEQEQ of Token.t (* "===" *)
          | `LTEQGT of Token.t (* "<=>" *)
          | `EQTILDE of Token.t (* "=~" *)
          | `BANGTILDE of Token.t (* "!~" *)
        ]
      * arg
    )
  | `Bin_arg_STARSTAR_arg of (arg * Token.t (* "**" *) * arg)
]
and unary = [
    `Un_defi_arg of (Token.t (* "defined?" *) * arg)
  | `Un_not_arg of (Token.t (* "not" *) * arg)
  | `Un_choice_un_minus_arg of (
        [ `Un_minus of unary_minus (*tok*) | `PLUS of Token.t (* "+" *) ]
      * arg
    )
  | `Un_choice_BANG_arg of (
        [ `BANG of Token.t (* "!" *) | `TILDE of Token.t (* "~" *) ]
      * arg
    )
]
and right_assignment_list = (
    [ `Arg of arg | `Splat_arg of splat_argument ]
  * (Token.t (* "," *) * [ `Arg of arg | `Splat_arg of splat_argument ])
      list (* zero or more *)
)
and left_assignment_list = mlhs
and mlhs = (
    [
        `Lhs of lhs
      | `Rest_assign of rest_assignment
      | `Dest_left_assign of destructured_left_assignment
    ]
  * (
        Token.t (* "," *)
      * [
            `Lhs of lhs
          | `Rest_assign of rest_assignment
          | `Dest_left_assign of destructured_left_assignment
        ]
    )
      list (* zero or more *)
  * Token.t (* "," *) option
)
and destructured_left_assignment = (
    Token.t (* "(" *) * mlhs * Token.t (* ")" *)
)
and rest_assignment = (Token.t (* "*" *) * lhs option)
and lhs = [
    `Var of variable
  | `True of true_
  | `False of false_
  | `Nil of nil
  | `Scope_resol of scope_resolution
  | `Elem_ref of (
        primary
      * Token.t (* "[" *)
      * argument_list_with_trailing_comma option
      * Token.t (* "]" *)
    )
  | `Call of call
  | `Meth_call of method_call
]
and method_name = [
    `Meth_name_id of identifier (*tok*)
  | `Meth_name_cst of constant (*tok*)
  | `Meth_name_sett of (identifier (*tok*) * Token.t (* "=" *))
  | `Meth_name_symb of symbol
  | `Meth_name_op of operator
  | `Meth_name_inst_var of instance_variable (*tok*)
  | `Meth_name_class_var of class_variable (*tok*)
  | `Meth_name_glob_var of global_variable (*tok*)
]
and interpolation = (Token.t (* "#{" *) * statement * Token.t (* "}" *))
and string_ = (
    string_start (*tok*)
  * literal_contents option
  * string_end (*tok*)
)
and symbol = [
    `Symb_simple_symb of simple_symbol (*tok*)
  | `Symb_symb_start_opt_lit_content_str_end of (
        symbol_start (*tok*)
      * literal_contents option
      * string_end (*tok*)
    )
]
and literal_contents =
  [
      `Str_content of string_content (*tok*)
    | `Interp of interpolation
    | `Esc_seq of escape_sequence (*tok*)
  ]
    list (* one or more *)
and pair = [
    `Pair_arg_EQGT_arg of (arg * Token.t (* "=>" *) * arg)
  | `Pair_choice_id_hash_key_COLON_arg of (
        [
            `Id_hash_key of identifier_hash_key (*tok*)
          | `Id of identifier (*tok*)
          | `Cst of constant (*tok*)
          | `Str of string_
        ]
      * Token.t (* ":" *)
      * arg
    )
]
[@@deriving sexp_of]

type program = (
    statements option
  * (Token.t (* "__END__" *) * line_break (*tok*) * uninterpreted (*tok*))
      option
)
[@@deriving sexp_of]

type self (* inlined *) = Token.t (* "self" *)
[@@deriving sexp_of]

type empty_statement (* inlined *) = Token.t (* ";" *)
[@@deriving sexp_of]

type comment (* inlined *) = Token.t
[@@deriving sexp_of]

type super (* inlined *) = Token.t (* "super" *)
[@@deriving sexp_of]

type rational (* inlined *) = (integer (*tok*) * Token.t (* "r" *))
[@@deriving sexp_of]

type hash_splat_parameter (* inlined *) = (
    Token.t (* "**" *)
  * identifier (*tok*) option
)
[@@deriving sexp_of]

type splat_parameter (* inlined *) = (
    Token.t (* "*" *)
  * identifier (*tok*) option
)
[@@deriving sexp_of]

type setter (* inlined *) = (identifier (*tok*) * Token.t (* "=" *))
[@@deriving sexp_of]

type block_parameter (* inlined *) = (Token.t (* "&" *) * identifier (*tok*))
[@@deriving sexp_of]

type unary_literal (* inlined *) = (
    [ `Un_minus of unary_minus (*tok*) | `PLUS of Token.t (* "+" *) ]
  * [ `Int of integer (*tok*) | `Float of float_ (*tok*) ]
)
[@@deriving sexp_of]

type begin_block (* inlined *) = (
    Token.t (* "BEGIN" *)
  * Token.t (* "{" *)
  * statements option
  * Token.t (* "}" *)
)
[@@deriving sexp_of]

type end_block (* inlined *) = (
    Token.t (* "END" *)
  * Token.t (* "{" *)
  * statements option
  * Token.t (* "}" *)
)
[@@deriving sexp_of]

type method_ (* inlined *) = (Token.t (* "def" *) * method_rest)
[@@deriving sexp_of]

type singleton_method (* inlined *) = (
    Token.t (* "def" *)
  * [
        `Var of variable
      | `LPAR_arg_RPAR of (Token.t (* "(" *) * arg * Token.t (* ")" *))
    ]
  * [ `DOT of Token.t (* "." *) | `COLONCOLON of Token.t (* "::" *) ]
  * method_rest
)
[@@deriving sexp_of]

type keyword_parameter (* inlined *) = (
    identifier (*tok*)
  * Token.t (* ":" *)
  * arg option
)
[@@deriving sexp_of]

type optional_parameter (* inlined *) = (
    identifier (*tok*) * Token.t (* "=" *) * arg
)
[@@deriving sexp_of]

type class_ (* inlined *) = (
    Token.t (* "class" *)
  * [ `Cst of constant (*tok*) | `Scope_resol of scope_resolution ]
  * superclass option
  * terminator
  * body_statement
)
[@@deriving sexp_of]

type singleton_class (* inlined *) = (
    Token.t (* "class" *) * singleton_class_left_angle_left_langle (*tok*)
  * arg * terminator * body_statement
)
[@@deriving sexp_of]

type module_ (* inlined *) = (
    Token.t (* "module" *)
  * [ `Cst of constant (*tok*) | `Scope_resol of scope_resolution ]
  * [
        `Term_body_stmt of (terminator * body_statement)
      | `End of Token.t (* "end" *)
    ]
)
[@@deriving sexp_of]

type return_command (* inlined *) = (
    Token.t (* "return" *) * command_argument_list
)
[@@deriving sexp_of]

type yield_command (* inlined *) = (
    Token.t (* "yield" *) * command_argument_list
)
[@@deriving sexp_of]

type break_command (* inlined *) = (
    Token.t (* "break" *) * command_argument_list
)
[@@deriving sexp_of]

type next_command (* inlined *) = (
    Token.t (* "next" *) * command_argument_list
)
[@@deriving sexp_of]

type return (* inlined *) = (Token.t (* "return" *) * argument_list option)
[@@deriving sexp_of]

type yield (* inlined *) = (Token.t (* "yield" *) * argument_list option)
[@@deriving sexp_of]

type break (* inlined *) = (Token.t (* "break" *) * argument_list option)
[@@deriving sexp_of]

type next (* inlined *) = (Token.t (* "next" *) * argument_list option)
[@@deriving sexp_of]

type redo (* inlined *) = (Token.t (* "redo" *) * argument_list option)
[@@deriving sexp_of]

type retry (* inlined *) = (Token.t (* "retry" *) * argument_list option)
[@@deriving sexp_of]

type if_modifier (* inlined *) = (
    statement * Token.t (* "if" *) * expression
)
[@@deriving sexp_of]

type unless_modifier (* inlined *) = (
    statement * Token.t (* "unless" *) * expression
)
[@@deriving sexp_of]

type while_modifier (* inlined *) = (
    statement * Token.t (* "while" *) * expression
)
[@@deriving sexp_of]

type until_modifier (* inlined *) = (
    statement * Token.t (* "until" *) * expression
)
[@@deriving sexp_of]

type rescue_modifier (* inlined *) = (
    statement * Token.t (* "rescue" *) * expression
)
[@@deriving sexp_of]

type while_ (* inlined *) = (
    Token.t (* "while" *)
  * arg
  * do_
  * statements option
  * Token.t (* "end" *)
)
[@@deriving sexp_of]

type until (* inlined *) = (
    Token.t (* "until" *)
  * arg
  * do_
  * statements option
  * Token.t (* "end" *)
)
[@@deriving sexp_of]

type for_ (* inlined *) = (
    Token.t (* "for" *)
  * mlhs
  * in_
  * do_
  * statements option
  * Token.t (* "end" *)
)
[@@deriving sexp_of]

type case (* inlined *) = (
    Token.t (* "case" *)
  * arg option
  * terminator
  * Token.t (* ";" *) list (* zero or more *)
  * when_ list (* zero or more *)
  * else_ option
  * Token.t (* "end" *)
)
[@@deriving sexp_of]

type if_ (* inlined *) = (
    Token.t (* "if" *)
  * statement
  * [ `Term of terminator | `Then of then_ ]
  * [ `Else of else_ | `Elsif of elsif ] option
  * Token.t (* "end" *)
)
[@@deriving sexp_of]

type unless (* inlined *) = (
    Token.t (* "unless" *)
  * statement
  * [ `Term of terminator | `Then of then_ ]
  * [ `Else of else_ | `Elsif of elsif ] option
  * Token.t (* "end" *)
)
[@@deriving sexp_of]

type begin_ (* inlined *) = (
    Token.t (* "begin" *)
  * terminator option
  * body_statement
)
[@@deriving sexp_of]

type element_reference (* inlined *) = (
    primary
  * Token.t (* "[" *)
  * argument_list_with_trailing_comma option
  * Token.t (* "]" *)
)
[@@deriving sexp_of]

type block_argument (* inlined *) = (block_ampersand (*tok*) * arg)
[@@deriving sexp_of]

type operator_assignment (* inlined *) = (
    lhs
  * [
        `PLUSEQ of Token.t (* "+=" *)
      | `DASHEQ of Token.t (* "-=" *)
      | `STAREQ of Token.t (* "*=" *)
      | `STARSTAREQ of Token.t (* "**=" *)
      | `SLASHEQ of Token.t (* "/=" *)
      | `BARBAREQ of Token.t (* "||=" *)
      | `BAREQ of Token.t (* "|=" *)
      | `AMPAMPEQ of Token.t (* "&&=" *)
      | `AMPEQ of Token.t (* "&=" *)
      | `PERCEQ of Token.t (* "%=" *)
      | `GTGTEQ of Token.t (* ">>=" *)
      | `LTLTEQ of Token.t (* "<<=" *)
      | `HATEQ of Token.t (* "^=" *)
    ]
  * arg
)
[@@deriving sexp_of]

type command_operator_assignment (* inlined *) = (
    lhs
  * [
        `PLUSEQ of Token.t (* "+=" *)
      | `DASHEQ of Token.t (* "-=" *)
      | `STAREQ of Token.t (* "*=" *)
      | `STARSTAREQ of Token.t (* "**=" *)
      | `SLASHEQ of Token.t (* "/=" *)
      | `BARBAREQ of Token.t (* "||=" *)
      | `BAREQ of Token.t (* "|=" *)
      | `AMPAMPEQ of Token.t (* "&&=" *)
      | `AMPEQ of Token.t (* "&=" *)
      | `PERCEQ of Token.t (* "%=" *)
      | `GTGTEQ of Token.t (* ">>=" *)
      | `LTLTEQ of Token.t (* "<<=" *)
      | `HATEQ of Token.t (* "^=" *)
    ]
  * expression
)
[@@deriving sexp_of]

type conditional (* inlined *) = (
    arg * Token.t (* "?" *) * arg * Token.t (* ":" *) * arg
)
[@@deriving sexp_of]

type range (* inlined *) = (
    arg
  * [ `DOTDOT of Token.t (* ".." *) | `DOTDOTDOT of Token.t (* "..." *) ]
  * arg
)
[@@deriving sexp_of]

type command_binary (* inlined *) = (
    expression
  * [ `Or of Token.t (* "or" *) | `And of Token.t (* "and" *) ]
  * expression
)
[@@deriving sexp_of]

type parenthesized_unary (* inlined *) = (
    [ `Defi of Token.t (* "defined?" *) | `Not of Token.t (* "not" *) ]
  * parenthesized_statements
)
[@@deriving sexp_of]

type undef (* inlined *) = (
    Token.t (* "undef" *)
  * method_name
  * (Token.t (* "," *) * method_name) list (* zero or more *)
)
[@@deriving sexp_of]

type alias (* inlined *) = (
    Token.t (* "alias" *) * method_name * method_name
)
[@@deriving sexp_of]

type chained_string (* inlined *) = (
    string_
  * string_ list (* one or more *)
)
[@@deriving sexp_of]

type subshell (* inlined *) = (
    subshell_start (*tok*)
  * literal_contents option
  * string_end (*tok*)
)
[@@deriving sexp_of]

type string_array (* inlined *) = (
    string_array_start (*tok*)
  * unit (* blank *) option
  * (
        literal_contents
      * (unit (* blank *) * literal_contents) list (* zero or more *)
    )
      option
  * unit (* blank *) option
  * string_end (*tok*)
)
[@@deriving sexp_of]

type symbol_array (* inlined *) = (
    symbol_array_start (*tok*)
  * unit (* blank *) option
  * (
        literal_contents
      * (unit (* blank *) * literal_contents) list (* zero or more *)
    )
      option
  * unit (* blank *) option
  * string_end (*tok*)
)
[@@deriving sexp_of]

type regex (* inlined *) = (
    regex_start (*tok*)
  * literal_contents option
  * string_end (*tok*)
)
[@@deriving sexp_of]

type array_ (* inlined *) = (
    Token.t (* "[" *)
  * argument_list_with_trailing_comma option
  * Token.t (* "]" *)
)
[@@deriving sexp_of]

type hash (* inlined *) = (
    Token.t (* "{" *)
  * (
        [ `Pair of pair | `Hash_splat_arg of hash_splat_argument ]
      * (
            Token.t (* "," *)
          * [ `Pair of pair | `Hash_splat_arg of hash_splat_argument ]
        )
          list (* zero or more *)
      * Token.t (* "," *) option
    )
      option
  * Token.t (* "}" *)
)
[@@deriving sexp_of]

type lambda (* inlined *) = (
    Token.t (* "->" *)
  * [ `Params of parameters | `Bare_params of bare_parameters ] option
  * [ `Blk of block | `Do_blk of do_block ]
)
[@@deriving sexp_of]

type heredoc_body (* inlined *) = (
    heredoc_body_start (*tok*)
  * [
        `Here_content of heredoc_content (*tok*)
      | `Interp of interpolation
      | `Esc_seq of escape_sequence (*tok*)
    ]
      list (* zero or more *)
  * heredoc_end (*tok*)
)
[@@deriving sexp_of]

let dump_tree root =
  sexp_of_program root
  |> Print_sexp.to_stdout
