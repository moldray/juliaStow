#!/usr/local/bin/julia -q

arg = ARGS[1]
targetPath = joinpath(pwd(), arg)
targetFiles = readdir(targetPath)

for file in targetFiles
  symlink(joinpath(targetPath, file), joinpath(homedir(), file))
end

