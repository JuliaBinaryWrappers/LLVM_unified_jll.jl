# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LLVM_unified_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("LLVM_unified")
JLLWrappers.@generate_main_file("LLVM_unified", Base.UUID("ab2214a1-3e65-5759-b805-15fb2da50eb2"))
end  # module LLVM_unified_jll
