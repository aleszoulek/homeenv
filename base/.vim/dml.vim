" Vim syntax file
" Language:	DML
" Maintainer:	Jan Ehrenberger

" Quit when a (custom) syntax file was already loaded
"if exists("b:current_syntax")
"  finish
"endif
syn clear

" case sensitive language
syn case match

syn keyword	dmlStatement	begin end let record package type
syn keyword	dmlLabel	case default
syn keyword	dmlConditional	if else switch
syn keyword	dmlRepeat	while for do
syn keyword	dmlType		big char date datetime decimal delimiter double endian float int integer little long real short signed string unsigned void union
syn keyword	dmlOperator	and or not "+" "-" "*" "/" "%" "::" "=" "==" ">=" "<=" ">" "<" "&&" "||"

syn region dmlBlock start="begin" end="end" transparent fold

" strings
syn region dmlString start=/"/ skip=/\\"/ end=/"/

" numbers
syn case ignore
syn match	dmlNumbers	display transparent "\<\d\|\.\d" contains=dmlNumber,dmlFloat,dmlOctalError,dmlOctal
" Same, but without octal error (for comments)
syn match	dmlNumbersCom	display contained transparent "\<\d\|\.\d" contains=dmlNumber,dmlFloat,dmlOctal
syn match	dmlNumber	display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
"hex number
syn match	dmlNumber	display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
" Flag the first zero of an octal number as something special
syn match	dmlOctal	display contained "0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero
syn match	dmlOctalZero	display contained "\<0"
syn match	dmlFloat	display contained "\d\+f"
"floating point number, with dot, optional exponent
syn match	dmlFloat	display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match	dmlFloat	display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match	dmlFloat	display contained "\d\+e[-+]\=\d\+[fl]\=\>"
if !exists("c_no_c99")
  "hexadecimal floating point number, optional leading digits, with dot, with exponent
  syn match	dmlFloat	display contained "0x\x*\.\x\+p[-+]\=\d\+[fl]\=\>"
  "hexadecimal floating point number, with leading digits, optional dot, with exponent
  syn match	dmlFloat	display contained "0x\x\+\.\=p[-+]\=\d\+[fl]\=\>"
endif

" flag an octal number with wrong digits
syn match	dmlOctalError	display contained "0\o*[89]\d*"
syn case match

" comments
syn region dmlComment start="/\*" end="\*/"
syn match dmlComment +//.*+

" common functions
syn keyword 	dmlFunction	allocate avg ceiling char_string continuous_timer_tick count date_add_months date_day date_day_of_month date_day_of_week date_day_of_year date_difference_days date_difference_months date_month date_month_end date_to_int date_year datetime_add datetime_add_months datetime_day datetime_day_of_month datetime_day_of_week datetime_day_of_year datetime_difference datetime_difference_abs datetime_difference_days datetime_difference_hours datetime_difference_minutes datetime_difference_months datetime_difference_seconds datetime_from_390_tod datetime_from_unixtime datetime_hour datetime_microsecond datetime_minute datetime_month datetime_second datetime_to_unixtime datetime_year ddl_name_to_dml_name ddl_to_dml decimal_lpad decimal_lrepad decimal_round decimal_round_down decimal_round_up decimal_strip decimal_truncate decode_date decode_date_record decode_datetime decode_datetime_as_local decode_delimited_bcd encode_date encode_datetime encode_local_datetime eval fail_if_error first first_defined floor force_error get_flow_state hash_value is_blank is_bzero is_defined is_error is_failure is_null is_valid last length_of lookup lookup_count lookup_count_local lookup_match lookup_next lookup_next_local make_byte_flags make_constant_vector math_abs math_acos math_asin math_atan math_atan2 math_cos math_cosh math_exp math_finite math_isnan math_log math_log10 math_pow math_sin math_sinh math_sqrt math_tan math_tanh max min new_xml_doc next_flow_state next_in_sequence now now1 number_of_partitions printf product random raw_data_concat raw_data_substring re_get_match re_index re_replace re_replace_first reinterpret_as reject_data scanf_double scanf_float scanf_int scanf_long scanf_string size_of sleep_for_microseconds string_char string_compare string_concat string_downcase string_filter string_filter_out string_from_hex string_index string_length string_lpad string_lrepad string_lrtrim string_ltrim string_pad string_repad string_replace string_replace_first string_representation string_rindex string_substring string_to_hex string_trim string_upcase sum test_characters_all test_characters_any this_partition today today1 translate_bytes unicode_char_string unpack_nibbles url_decode_escapes url_encode_escapes utc_now write_data write_string write_to_log write_to_log_file xml_add_attribute xml_add_cdata xml_add_element xml_begin_document xml_begin_element xml_end_document xml_end_element xml_format xml_get_attribute xml_get_element xml_parse

" in and out
syn keyword dmlIn in
syn match dmlIn /in[0-9]/
syn keyword dmlOut out
syn match dmlOut /out[0-9]/

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link dmlLabel		Label
hi def link dmlConditional	Conditional
hi def link dmlRepeat		Repeat
hi def link dmlStatement	Statement
hi def link dmlType		Type
hi def link dmlOperator		Operator
hi def link dmlString		String
hi def link dmlComment		Comment
hi def link dmlComment2		Comment
hi def link dmlFunction		Function
hi def link dmlNumber		Number
hi def link dmlIn		Special
hi def link dmlOut		Special
hi def link dmlOctalError	Error

let b:current_syntax = "dml"

" vim: ts=8
