export const isAuthenticated = (req, res, next) => {
  if (req.session.user) {
    next(); // Si la sesión está activa, continúa
  } else {
    res.status(401).json({ message: 'No autenticado' }); // Si no hay sesión, devuelve un error
  }
};
