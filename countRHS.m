function RHS = countRHS(u,omega)
    RHS = (0.0053 * u / 2.71) - (0.0053 * 0.0053 * omega / 2.71)
end