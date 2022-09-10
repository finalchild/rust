-ast_passes_more_extern =
    for more information, visit https://doc.rust-lang.org/std/keyword.extern.html

ast_passes_forbidden_let =
    `let` expressions are not supported here
    .note = only supported directly in conditions of `if` and `while` expressions
    .not_supported_or = `||` operators are not supported in let chain expressions
    .not_supported_parentheses = `let`s wrapped in parentheses are not supported in a context with let chains

ast_passes_forbidden_let_stable =
    expected expression, found statement (`let`)
    .note = variable declaration using `let` is a statement

ast_passes_deprecated_where_clause_location =
    where clause not allowed here

ast_passes_forbidden_assoc_constraint =
    associated type bounds are not allowed within structs, enums, or unions

ast_passes_keyword_lifetime =
    lifetimes cannot use keyword names

ast_passes_invalid_label =
    invalid label name `{$name}`

ast_passes_invalid_visibility =
    unnecessary visibility qualifier
    .implied = `pub` not permitted here because it's implied
    .individual_impl_items = place qualifiers on individual impl items instead
    .individual_foreign_items = place qualifiers on individual foreign items instead

ast_passes_trait_fn_const =
    functions in traits cannot be declared const
    .label = functions in traits cannot be const

ast_passes_forbidden_lifetime_bound =
    lifetime bounds cannot be used in this context

ast_passes_forbidden_non_lifetime_param =
    only lifetime parameters can be used in this context

ast_passes_fn_param_too_many =
    function can not have more than {$max_num_args} arguments

ast_passes_fn_param_c_var_args_only =
    C-variadic function must be declared with at least one named argument

ast_passes_fn_param_c_var_args_not_last =
    `...` must be the last argument of a C-variadic function

ast_passes_fn_param_doc_comment =
    documentation comments cannot be applied to function parameters
    .label = doc comments are not allowed here

ast_passes_fn_param_forbidden_attr =
    allow, cfg, cfg_attr, deny, expect, forbid, and warn are the only allowed built-in attributes in function parameters

ast_passes_fn_param_forbidden_self =
    `self` parameter is only allowed in associated functions
    .label = not semantically valid as function parameter
    .note = associated functions are those in `impl` or `trait` definitions

ast_passes_forbidden_default =
    `default` is only allowed on items in trait impls
    .label = `default` because of this

ast_passes_assoc_const_without_body =
    associated constant in `impl` without body
    .suggestion = provide a definition for the constant

ast_passes_assoc_fn_without_body =
    associated function in `impl` without body
    .suggestion = provide a definition for the function

ast_passes_impl_assoc_ty_without_body =
    associated type in `impl` without body
    .suggestion = provide a definition for the type

ast_passes_const_without_body =
    free constant item without body
    .suggestion = provide a definition for the constant

ast_passes_static_without_body =
    free static item without body
    .suggestion = provide a definition for the static

ast_passes_ty_alias_without_body =
    free type alias without body
    .suggestion = provide a definition for the type

ast_passes_fn_without_body =
    free function without a body
    .suggestion = provide a definition for the function

ast_passes_extern_block_suggestion = if you meant to declare an externally defined function, use an `extern` block

ast_passes_ty_alias_with_bound =
    bounds on `type`s in this context have no effect

ast_passes_foreign_ty_with_bound =
    bounds on `type`s in `extern` blocks have no effect

ast_passes_impl_assoc_ty_with_bound =
    bounds on `type`s in `impl`s have no effect

ast_passes_foreign_ty_with_generic_param =
    `type`s inside `extern` blocks cannot have generic parameters
    .suggestion = remove the generic parameters
    .extern_block_label = `extern` block begins here
    .more_extern_note = {-ast_passes_more_extern}

ast_passes_foreign_ty_with_where_clause =
    `type`s inside `extern` blocks cannot have `where` clauses
    .suggestion = remove the `where` clause
    .extern_block_label = `extern` block begins here
    .more_extern_note = {-ast_passes_more_extern}

ast_passes_foreign_ty_with_body =
    incorrect `type` inside `extern` block
    .label = cannot have a body
    .body_label = the invalid body
    .extern_block_label = `extern` blocks define existing foreign types and types inside of them cannot have a body
    .more_extern_note = {-ast_passes_more_extern}

ast_passes_foreign_static_with_body =
    incorrect `static` inside `extern` block
    .label = cannot have a body
    .body_label = the invalid body
    .extern_block_label = `extern` blocks define existing foreign statics and statics inside of them cannot have a body
    .more_extern_note = {-ast_passes_more_extern}

ast_passes_foreign_fn_with_body =
    incorrect function inside `extern` block
    .label = cannot have a body
    .suggestion = remove the invalid body
    .help = you might have meant to write a function accessible through FFI, which can be done by writing `extern fn` outside of the `extern` block
    .extern_block_label = `extern` blocks define existing foreign functions and functions inside of them cannot have a body
    .more_extern_note = {-ast_passes_more_extern}

ast_passes_foreign_fn_with_qualifier =
    functions in `extern` blocks cannot have qualifiers
    .extern_block_label = in this `extern` block
    .suggestion = remove the qualifiers

ast_passes_foreign_item_non_ascii =
    items in `extern` blocks cannot use non-ascii identifiers
    .extern_block_label = in this `extern` block
    .note = this limitation may be lifted in the future; see issue #83942 <https://github.com/rust-lang/rust/issues/83942> for more information

ast_passes_forbidden_c_var_args =
    only foreign or `unsafe extern "C"` functions may be C-variadic

ast_passes_unnamed_assoc_const =
    `const` items in this context need a name
    .label = `_` is not a valid name for this `const` item

ast_passes_nomangle_item_non_ascii =
    `#[no_mangle]` requires ASCII identifier

ast_passes_mod_file_item_non_ascii =
    trying to load file for module `{$name}` with non-ascii identifier name
    .help = consider using `#[path]` attribute to specify filesystem path

ast_passes_auto_trait_with_generic_param =
    auto traits cannot have generic parameters
    .ident_label = auto trait cannot have generic parameters
    .suggestion = remove the parameters

ast_passes_auto_trait_with_super_trait_or_where_clause =
    auto traits cannot have super traits or lifetime bounds
    .ident_label = auto trait cannot have super traits or lifetime bounds
    .suggestion = remove the super traits or lifetime bounds

ast_passes_auto_trait_with_assoc_item =
    auto traits cannot have associated items
    .suggestion = remove these associated items
    .ident_label = auto trait cannot have associated items

ast_passes_generic_arg_after_constraint =
    generic arguments must come before the first constraint
    .first_constraint_label = { $constraints_len ->
        [one] constraint
       *[other] constraints
    }
    .last_arg_label = { $args_len ->
        [one] generic argument
       *[other] generic arguments
    }
    .constraints_label = {""}
    .args_label = {""}
    .suggestion = move the { $constraints_len ->
        [one] constraint
       *[other] constraints
    } after the { $args_len ->
        [one] generic argument
       *[other] generic arguments
    }

ast_passes_fn_ptr_ty_with_pat =
    patterns aren't allowed in function pointer types

ast_passes_multiple_explicit_lifetime_bound =
    only a single explicit lifetime bound is permitted

ast_passes_impl_trait_ty_in_path_param =
    `impl Trait` is not allowed in path parameters

ast_passes_impl_trait_ty_nested =
    nested `impl Trait` is not allowed
    .outer_label = outer `impl Trait`
    .nested_label = nested `impl Trait` here

ast_passes_impl_trait_ty_without_trait_bound =
    at least one trait must be specified

ast_passes_deprecated_extern_missing_abi =
    extern declarations without an explicit ABI are deprecated
