package views;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.SwingConstants;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Login extends JFrame {

	private JPanel contentPane;
	private JTextField txtUsuario;
	private JPasswordField psSenha;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Login frame = new Login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Login() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		psSenha = new JPasswordField();
		psSenha.setBounds(140, 92, 177, 20);
		contentPane.add(psSenha);
		
		txtUsuario = new JTextField();
		txtUsuario.setBounds(140, 61, 177, 20);
		contentPane.add(txtUsuario);
		txtUsuario.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Senha");
		lblNewLabel_1.setBounds(85, 95, 46, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel = new JLabel("Usu\u00E1rio");
		lblNewLabel.setBounds(85, 64, 46, 14);
		contentPane.add(lblNewLabel);
		
		JButton btnSair = new JButton("Sair");
		btnSair.setBounds(140, 157, 177, 23);
		contentPane.add(btnSair);
		
		JButton btnAcessar = new JButton("Acessar");
		btnAcessar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				Principal tela = new Principal();
				
				tela.setVisible(true); //Chama a tela principal
				
				dispose(); //Fecha a tela anterior
			}
		});
		btnAcessar.setBounds(140, 123, 177, 23);
		contentPane.add(btnAcessar);
		
		JLabel LabelFundoLogin = new JLabel("");
		LabelFundoLogin.setIcon(new ImageIcon(Login.class.getResource("/imagens/fundotelaLogin.png")));
		LabelFundoLogin.setBounds(0, 0, 434, 261);
		contentPane.add(LabelFundoLogin);
	}
}
