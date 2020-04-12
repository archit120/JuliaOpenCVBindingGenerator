module cv_internal
    using CxxWrap
    @wrapmodule(joinpath("TODO","libcv2_jlcxx"), :cv_internal_wrap)

    function __init__()
        @initcxx
    end
    
    import ..cpp_to_julia
    import ..julia_to_cpp

    

    
end