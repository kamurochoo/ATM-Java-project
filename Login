package javaapplication4;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class Login extends JFrame implements ActionListener{
    
    JButton login,clear,login2;
    
     JTextField cardtextfield,pintextfield;
     JPasswordField pinTextField;
    Login(){
        
        
        
        setTitle("ATM SIGN-UP");
        setLayout(null); 
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/logo.jpg"));
        Image i2= i1.getImage().getScaledInstance(100, 100, Image.SCALE_DEFAULT);
        ImageIcon i3= new ImageIcon(i2);
                JLabel label = new JLabel(i3);
                label.setBounds(70, 10, 100, 100);
                add(label);
                
                JLabel text = new JLabel("WELCOME TO ATM");
                text.setFont(new Font("Garamond", Font.BOLD, 40));
                text.setForeground(Color.white);                   
                text.setBounds(200, 40,400, 40);
                add(text);
                
                
                JLabel cardno = new JLabel("CARD NO :");
                cardno.setFont(new Font("RAIEWAY", Font.BOLD, 20));
                cardno.setForeground(Color.white);
                cardno.setBounds(120, 150,150, 40);
                add(cardno);
                
                cardtextfield = new JTextField();
                cardtextfield.setBounds(250, 150, 250, 30);
                cardtextfield.setFont(new Font("Arial",Font.ITALIC,20));
                add(cardtextfield);
                
                
                
                JLabel pin = new JLabel("PIN NO :");
                pin.setFont(new Font("RAIEWAY", Font.BOLD, 20));
                pin.setForeground(Color.white);
                pin.setBounds(120, 220,400, 30);
                add(pin);
                
                pintextfield = new JPasswordField();
                pintextfield.setBounds(250, 220, 250, 30);
                add(pintextfield);
                
                
                 login = new JButton("SIGN IN");
                login.setBounds(250, 300, 100, 30);
                login.setBackground(Color.black);
                login.setForeground(Color.white);
                login.addActionListener(this);
                add(login); 
                   
                 
                clear = new JButton("CLEAR");
                clear.setBounds(400, 300, 100, 30);
                clear.setBackground(Color.black);
                clear.setForeground(Color.white);
                clear.addActionListener(this);
                add(clear);
                
                
                login2 = new JButton("SIGN UP");
                login2.setBounds(250, 350, 250, 30);
                login2.setBackground(Color.black);
                login2.setForeground(Color.white);
                login2.addActionListener(this);
                add(login2); 
                 
                 
                
                 
                
                 getContentPane().setBackground(Color.black);
        setSize(800,500);
        setVisible(true);
        setLocation(350,200);
    }
    public void actionPerformed(ActionEvent ae){
        
        if(ae.getSource()== clear){
            
            cardtextfield.setText("");
            pintextfield.setText("");
        }else if(ae.getSource()==login2){
            
              setVisible(false);
              new SignupOne().setVisible(true);
        
    }else if(ae.getSource()==login){
        
    }
    }

    public static void main(String args[]) {
      new Login();
    }
}
