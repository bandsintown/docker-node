@test "package 'node' should be present" {
  run which node
  [ $status -eq 0 ]
}

@test "package 'npm' should be present" {
  run which npm
  [ $status -eq 0 ]
}

@test "package 'yarn' should be present" {
  run which yarn
  [ $status -eq 0 ]
}