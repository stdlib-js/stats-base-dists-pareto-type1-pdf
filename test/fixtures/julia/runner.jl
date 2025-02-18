#!/usr/bin/env julia
#
# @license Apache-2.0
#
# Copyright (c) 2018 The Stdlib Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

using Distributions
import JSON

"""
	gen( x, alpha, beta, name )

Generate fixture data and write to file.

# Arguments

* `x`: input value
* `alpha`: shape parameter
* `beta`: scale parameter
* `name::AbstractString`: output filename

"""
function gen( x, alpha, beta, name )
	z = Array{Float64}( undef, length(x) );
	for i in eachindex(x)
		z[ i ] = pdf( Pareto( alpha[i], beta[i] ), x[i] );
	end

	# Store data to be written to file as a collection:
	data = Dict([
		("x", x),
		("alpha", alpha),
		("beta", beta),
		("expected", z)
	]);

	# Based on the script directory, create an output filepath:
	filepath = joinpath( dir, name );

	# Write the data to the output filepath as JSON:
	outfile = open( filepath, "w" );
	write( outfile, JSON.json(data) );
	write( outfile, "\n" );
	close( outfile );
end

# Get the filename:
file = @__FILE__;

# Extract the directory in which this file resides:
dir = dirname( file );

# Large alpha parameter:
alpha = ( rand( 1000 ) .* 10.0 ) .+ 10.0;
beta = rand( 1000 ) .* 10.0;
x = beta .+ rand( 1000 ) .* 20.0;
gen( x, alpha, beta, "large_alpha.json" );

# Large beta parameter:
alpha = rand( 1000 ) .* 10.0;
beta = ( rand( 1000 ) .* 10.0 ) .+ 10.0;
x = beta .+ rand( 1000 ) .* 20.0;
gen( x, alpha, beta, "large_beta.json" );

# Both large:
alpha = ( rand( 1000 ) .* 20.0 ) .+ 10.0;
beta = ( rand( 1000 ) .* 20.0 ) .+ 10.0;
x = beta .+ rand( 1000 ) .* 20.0;
gen( x, alpha, beta, "both_large.json" );
