function TorF = isload(gen)
%ISLOAD  Checks for dispatchable loads.
%   TorF = isload(gen) returns a column vector of 1's and 0's. The 1's
%   correspond to rows of the gen matrix which represent dispatchable loads.
%   The current test is Pmin < 0 AND Pmax == 0.
%   This may need to be revised to allow sensible specification
%   of both elastic demand and pumped storage units.

%   MATPOWER
%   $Id$
%   by Ray Zimmerman, PSERC Cornell
%   Copyright (c) 2005 by Power System Engineering Research Center (PSERC)
%   See http://www.pserc.cornell.edu/matpower/ for more info.

[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, ...
    PMAX, PMIN, MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, QMAX2, QMIN2, ...
    RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q] = idx_gen;

TorF = gen(:, PMIN) < 0 & gen(:, PMAX) == 0;

return;
