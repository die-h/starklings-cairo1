// options2.cairo
// Execute `starklings hint options2` or use the `hint` watch subcommand for a hint.

use option::OptionTrait;
use debug::PrintTrait;

#[test]
fn test_options() {
    let target = 'starklings';
    let optional_some = Option::Some(target);
    let optional_none: Option<felt252> = Option::None(());
    simple_option(optional_some);
    simple_option(optional_none);
}

fn simple_option(optional_target: Option<felt252>) {
    // TODO: use the `is_some` and `is_none` methods to check if `optional_target` contains a value.
    // Place the assertion and the print statement below in the correct blocks.

    match optional_target {
        Option::Some(_) => {
            assert(optional_target.unwrap() == 'starklings', 'err1');
        },
        Option::None(()) => {
            ('option is empty !').print();
        }
    }
   // if optional_target.is_some() {} else {}
}
