// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:   {kind: 'Name', text: 'Div'},
// CHECK:STDOUT:     {kind: 'DeducedParameterListStart', text: '['},
// CHECK:STDOUT:       {kind: 'Name', text: '(', has_error: yes},
// CHECK:STDOUT:       {kind: 'InvalidParse', text: '(', has_error: yes},
// CHECK:STDOUT:     {kind: 'PatternBinding', text: '(', has_error: yes, subtree_size: 3},
// CHECK:STDOUT:   {kind: 'DeducedParameterList', text: ']', has_error: yes, subtree_size: 5},
// CHECK:STDOUT: {kind: 'FunctionDeclaration', text: 'fn', has_error: yes, subtree_size: 8},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

// Fix and uncomment this to test error handling.
// CHECK:STDERR: fail_missing_deduced_close.carbon:[[@LINE+9]]:7: Closing symbol does not match most recent opening symbol.
// CHECK:STDERR: fn Div[();
// CHECK:STDERR:       ^
// CHECK:STDERR: fail_missing_deduced_close.carbon:[[@LINE+6]]:8: Expected parameter declaration.
// CHECK:STDERR: fn Div[();
// CHECK:STDERR:        ^
// CHECK:STDERR: fail_missing_deduced_close.carbon:[[@LINE+3]]:11: A `(` for parameters is required after deduced parameters.
// CHECK:STDERR: fn Div[();
// CHECK:STDERR:           ^
fn Div[();
