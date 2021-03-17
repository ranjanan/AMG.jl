module AlgebraicMultigrid

import IterativeSolvers: gauss_seidel!
using LinearAlgebra
using SparseArrays, Printf
using Base.Threads

using LinearAlgebra: rmul!

# const mul! = A_mul_B!

const MT = false
const AMG = AlgebraicMultigrid

include("utils.jl")
export approximate_spectral_radius

include("strength.jl")
export Classical, SymmetricStrength

include("splitting.jl")
export RS

include("gallery.jl")
export poisson

include("smoother.jl")
export GaussSeidel, SymmetricSweep, ForwardSweep, BackwardSweep,
        JacobiProlongation

include("multilevel.jl")
export solve

include("classical.jl")
export ruge_stuben

include("aggregate.jl")
export StandardAggregation

include("aggregation.jl")
export fit_candidates, smoothed_aggregation

include("preconditioner.jl")
export aspreconditioner

end # module
