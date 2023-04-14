import express from "express";
import { getUsers, Register, Login, Logout } from "./userController.js";
import  verifyToken  from "./middleware.js";
import  refreshToken  from "./refreshToken.js";
 
const router = express.Router();
 
router.get('/dataUsers', verifyToken, getUsers);
router.post('/dataUsers', Register);
router.post('/login', Login);
router.get('/token', refreshToken);
router.delete('/logout', Logout);
 
export default router;