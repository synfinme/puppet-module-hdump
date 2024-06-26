class hdump (
  String $arg00 = 'unset-00',
  String $arg01 = 'unset-01',
  String $arg02 = 'unset-02',
  String $arg03 = 'unset-03',
  String $arg04 = 'unset-04',
  String $arg05 = 'unset-05',
  String $arg06 = 'unset-06',
  String $arg07 = 'unset-07',
  String $arg08 = 'unset-08',
  String $arg09 = 'unset-09',
  String $arg10 = 'unset-10',
  String $arg11 = 'unset-11',
  String $arg12 = 'unset-12',
  String $arg13 = 'unset-13',
  String $arg14 = 'unset-14',
  String $arg15 = 'unset-15',
) {
  file { '/tmp/hdump-args.txt':
    ensure  => file,
    mode    => '0644',
    content => epp("${module_name}/hdump-args.epp", {
      arg00 => $::hdump::arg00,
      arg01 => $::hdump::arg01,
      arg02 => $::hdump::arg02,
      arg03 => $::hdump::arg03,
      arg04 => $::hdump::arg04,
      arg05 => $::hdump::arg05,
      arg06 => $::hdump::arg06,
      arg07 => $::hdump::arg07,
      arg08 => $::hdump::arg08,
      arg09 => $::hdump::arg09,
      arg10 => $::hdump::arg10,
      arg11 => $::hdump::arg11,
      arg12 => $::hdump::arg12,
      arg13 => $::hdump::arg13,
      arg14 => $::hdump::arg14,
      arg15 => $::hdump::arg15,
    })
  }
}
