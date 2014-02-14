function kern = rbfperiodic2KernExpandParam(kern, params)

% RBFPERIODIC2KERNEXPANDPARAM Create kernel structure from RBFPERIODIC2 kernel's parameters.
% FORMAT
% DESC returns a RBF periodic covariance with variying period kernel structure filled with the
% parameters in the given vector. This is used as a helper function to
% enable parameters to be optimised in, for example, the NETLAB
% optimisation functions.
% ARG kern : the kernel structure in which the parameters are to be
% placed.
% ARG param : vector of parameters which are to be placed in the
% kernel structure.
% RETURN kern : kernel structure with the given parameters in the
% relevant locations.
%
% SEEALSO : rbfperiodic2KernParamInit, rbfperiodic2KernExtractParam, kernExpandParam
%
% COPYRIGHT : Neil D. Lawrence, 2007, 2009
%
% MODIFICATIONS : Andreas C. Damianou, 2011
%
% MODIFICATIONS : Michalis K. Titsias, 2011

% GPMAT

kern.inverseWidth = params(1);
kern.variance = params(2);
kern.factor = params(3);
kern.period = 2*pi/kern.factor;
