(* QFT Midterm Project — AR-05 Mathematica validation cells
   Run this file in Mathematica (or paste cells into the notebook).
   These are symbolic checks; no FeynArts/FeynCalc packages are required here. *)

ClearAll[eps, g, p2, m2, x, beta, fixedPoint, bubbleDiff, sunsetRatio,
  sunsetExact, eta, deltaExact, deltaSeries, gammaPhi];

Print["=== V-01: Beta function and fixed point ==="];
beta = -eps g + 3 g^2;
fixedPoint = Solve[beta == 0, g];
Print["beta(g) = ", beta];
Print["Fixed points = ", fixedPoint];
Print["Non-Gaussian fixed point (leading order) = eps/3"];


Print["=== V-02: Bubble difference and slope ==="];
bubbleDiff = -(1/(16 Pi^2)) Integrate[
   Log[1 + x (1 - x) p2/m2], {x, 0, 1},
   Assumptions -> m2 > 0 && p2 >= 0];
(* The integral expression is finite; its derivative at p2=0 is checked directly. *)
bubbleSlope = FullSimplify[D[bubbleDiff, p2] /. p2 -> 0,
   Assumptions -> m2 > 0];
bubbleSlopeExpected = -1/(96 Pi^2 m2);
Print["B(P)-B(0) = ", bubbleDiff];
Print["Slope at P^2=0 = ", bubbleSlope];
Print["Slope check = ", FullSimplify[bubbleSlope == bubbleSlopeExpected]];


Print["=== V-03: Sunset Gamma-function ratio and pole ==="];
sunsetRatio = Gamma[1 - eps/2]^3 Gamma[eps - 1]/Gamma[3 - 3 eps/2];
sunsetExact = (mu^(2 eps) p2^(1 - eps)/(4 Pi)^(4 - eps)) sunsetRatio;
Print["Gamma ratio series = ", Series[sunsetRatio, {eps, 0, 0}]];
Print["Sunset pole coefficient of p^2 = ",
  SeriesCoefficient[sunsetExact, {eps, 0, -1}]];
(* The expected pole is -p^2/[2 (4 pi)^4]. *)


Print["=== V-04: eta and delta epsilon-expansion ==="];
gammaPhi = g^2/12;
eta = (2 gammaPhi) /. g -> eps/3;
deltaExact = (6 - eps - eta)/(2 - eps + eta);
deltaSeries = Normal[Series[deltaExact, {eps, 0, 2}]];
Print["eta at the one-loop fixed point = ", eta];
Print["delta exact expression using eta truncation = ", deltaExact];
Print["delta series through eps^2 = ", deltaSeries];
Print["delta at eps=1 (truncated) = ", N[deltaSeries /. eps -> 1, 12]];


Print["=== Automated checks ==="];
checks = {
  FullSimplify[bubbleSlope == bubbleSlopeExpected, Assumptions -> m2 > 0],
  FullSimplify[eta == eps^2/54],
  FullSimplify[deltaSeries == 3 + eps + 25 eps^2/54]
};
Print[checks];
If[And @@ checks, Print["PASS: all symbolic checks returned True."],
  Print["CHECK FAILED: inspect the outputs above."]];
