function RHS = countRHS(u,omega)
    RHS = (0.053 * u / 2.71) - (0.053 * 0.053 * omega / 2.71)
end