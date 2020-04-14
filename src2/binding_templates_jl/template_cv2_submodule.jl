module ${modname}
using CxxWrap
@wrapmodule(joinpath("${libpath}","libcv2_jlcxx"), :${modname}_wrap)

function __init__()
    @initcxx
end

import ..cpp_to_julia
import ..julia_to_cpp

${code}

${submodule_imports}
end