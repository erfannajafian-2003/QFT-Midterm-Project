# QFT Midterm Project

## Scalar Field Renormalization: From One Loop to the Critical Isotherm of Water

**Author:** Erfan Najafian

**Project:** Quantum Field Theory — Midterm Assignment

---

## Overview

This project investigates renormalization in real scalar \(\phi^4\) quantum field theory and its application to critical phenomena, with a particular focus on the critical isotherm of water.

The project covers one-loop and two-loop calculations, dimensional regularization, momentum-cutoff regularization, renormalization conditions, renormalization group equations, and critical exponents.

The calculations are developed using Wolfram Mathematica, FeynArts, and FeynCalc.

## Project Contents

### Part 1 — One-Loop Renormalization

- Generation and analysis of one-loop Feynman diagrams.
- Two-point tadpole and four-point bubble diagrams.
- Identification of the \(s\), \(t\), and \(u\) channels.
- Evaluation of loop integrals using a sharp momentum cutoff.
- Dimensional regularization and Laurent expansions.
- Counterterms and renormalization conditions.
- Derivation of the beta function.
- Wilson–Fisher fixed point.

### Part 2 — Critical Exponents and Water

- Two-loop sunset diagram.
- Evaluation of the massless sunset integral.
- Field-strength renormalization constant \(Z_\phi\).
- Anomalous dimension \(\gamma_\phi\).
- Calculation of the critical exponent \(\eta\).
- Scaling relations and derivation of the critical exponent \(\delta\).
- Comparison with experimental water data and the three-dimensional Ising bootstrap benchmark.
- Critical scattering behavior.

## Theoretical Conventions

The calculations use Euclidean signature and the dimensional convention

\[
d=4-\varepsilon.
\]

The dimensionless coupling is defined as

\[
g=\frac{\lambda}{16\pi^2}.
\]

For dimensional regularization, one factor of \(\mu^\varepsilon\) is included per loop.

The FeynCalc convention \(D=4-2\varepsilon_{\mathrm{FC}}\) is related to the project convention through

\[
\varepsilon=2\varepsilon_{\mathrm{FC}}.
\]

## Software and Tools

- Wolfram Mathematica
- FeynArts 3.11
- FeynCalc

## Main Deliverable

The primary deliverable is the Mathematica notebook:

`QFT_Midterm_Project.nb`

It contains the analytical derivations, Mathematica input cells, Feynman diagram generation, and computational results.

## Academic Purpose

The main objective is to connect perturbative quantum field theory and renormalization techniques with universal critical phenomena, demonstrating how renormalization-group methods lead to predictions for observable critical behavior.

---

**Author:** Erfan Najafian  
**Field:** Theoretical Physics  
**Topic:** Quantum Field Theory and Critical Phenomena