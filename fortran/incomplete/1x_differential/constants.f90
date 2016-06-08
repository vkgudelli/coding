module constants
implicit none
real(kind=16), parameter :: pi=4.0*atan(1.0)
real(kind=16), parameter :: c=299792458  !velocity of light in vacuum
real(kind=16), parameter :: G=6.67384*10**(-11) !Newtonian constant of gravitation.
real(kind=16), parameter :: e=1.602176565*10**(-19) !elementary charge.
real(kind=16), parameter :: m_e=9.10938291*10**(-31) !electron mass 
real(kind=16), parameter :: m_p=1.672621777*10**(-27) !proton mass
real(kind=16), parameter :: a_0=5.2917721092*10**(-11) !Bohr radius
real(kind=16), parameter :: mu_0=4*pi*10**(-7) !magnetic constant (vacuum permeability)
real(kind=16), parameter :: epsilon_0=8.854187817*10**(-12) !electric constant (vacuum permittivity)
real(kind=16), parameter :: mu_B=9.27400968*10**(-24) !Bohr magneton 
real(kind=16), parameter :: R_0=10973731.568539 !Rydberg constant
real(kind=16), parameter :: alpha=7.2973525698*10**(-3) !fine-structure constant
real(kind=16), parameter :: k_B=1.3806488*10**(-23) !Boltzmann constant 
real(kind=16), parameter :: R=8.3144621 !Gas constant
end module constants
