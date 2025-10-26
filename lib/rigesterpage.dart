import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6F3),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            padding: const EdgeInsets.symmetric(horizontal:25, vertical: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  "Registration",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 35),

                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    prefixIcon: const Icon(Icons.person),
                  ),
                  
                ),
                const SizedBox(height: 18),

                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    prefixIcon: const Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 18),

                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 18),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password Confirm',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  controller: _confirmPasswordController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                ),
                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Or continue with",
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 40),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                     
                      child: ElevatedButton(
                         onPressed: () {},
                         style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.white,
                         elevation: 3,
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16),
                         side: BorderSide(color: Colors.grey.shade300),
                    ),
                   ),
                         child: Image.asset('assets/gogal.png',width: 30,height:30,fit: BoxFit.cover ),
                  ),
               ),
                    SizedBox(
                      child: ElevatedButton(
                         onPressed: () {},
                         style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.white,
                         elevation: 3,
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16),
                         side: BorderSide(color: Colors.grey.shade300),
                                          ),
                                         ),
                         child: Image.asset("assets/fec.png",width: 30,height: 30,fit: BoxFit.cover ),
                                        ),
                    ),
                    SizedBox(
                      
                      child: ElevatedButton(
                         onPressed: () {},
                         style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.white,
                         elevation: 3,
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16),
                         side: BorderSide(color: Colors.grey.shade300),
                    ),
                   ),
                         child: Image.asset("assets/twe.png", width: 30,height:38,fit: BoxFit.cover, ),
                  ),
               ),
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}