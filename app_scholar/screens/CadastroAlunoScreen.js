import React, { useState } from 'react';
import {
  View,
  Text,
  TextInput,
  Pressable,
  StyleSheet,
  Alert,
  ScrollView
} from 'react-native';

import { API_URL } from '../services/api';

export default function CadastroAlunoScreen({ navigation }) {
  const [nome, setNome] = useState('');
  const [cpf, setCpf] = useState('');
  const [ra, setRa] = useState('');
  const [dataNascimento, setDataNascimento] = useState(''); // formato AAAA-MM-DD
  const [numeroCasa, setNumeroCasa] = useState('');
  const [complemento, setComplemento] = useState('');
  const [idRua, setIdRua] = useState('');
  const [telefone, setTelefone] = useState('');
  const [email, setEmail] = useState('');

  const cadastrarAluno = async () => {
    if (!nome.trim() || !cpf.trim() || !ra.trim() || !dataNascimento.trim() || !idRua.trim()) {
      Alert.alert('Atenção', 'Nome, CPF, RA, data de nascimento e nome da rua são obrigatórios.');
      return;
    }

    try {
      const resposta = await fetch(`${API_URL}/cadastrar_aluno.php`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          nome,
          cpf,
          ra,
          data_nascimento: dataNascimento,
          numero_casa: Number(numeroCasa) || 0,
          complemento,
          id_rua: idRua,
          telefone,
          email
        })
      });

      if (!resposta.ok) {
        throw new Error('Erro ao cadastrar aluno.');
      }

      const resultado = await resposta.json();

      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno cadastrado com sucesso!');
        navigation.goBack();
      } else {
        Alert.alert('Erro', resultado.mensagem || 'Não foi possível cadastrar o aluno.');
      }
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível cadastrar o aluno.');
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Cadastro de Aluno</Text>
      <TextInput style={styles.input} placeholder="Nome completo" value={nome} onChangeText={setNome} />
      <TextInput style={styles.input} placeholder="CPF" value={cpf} onChangeText={setCpf} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="RA do aluno" value={ra} onChangeText={setRa} />
      <TextInput
        style={styles.input}
        placeholder="Data de nascimento (AAAA-MM-DD)"
        value={dataNascimento}
        onChangeText={setDataNascimento}
      />
      <TextInput
        style={styles.input}
        placeholder="Número da casa"
        value={numeroCasa}
        onChangeText={setNumeroCasa}
        keyboardType="numeric"
      />
      <TextInput style={styles.input} placeholder="Complemento" value={complemento} onChangeText={setComplemento} />
      <TextInput style={styles.input} placeholder="Nome da rua" value={idRua} onChangeText={setIdRua} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Telefone" value={telefone} onChangeText={setTelefone} keyboardType="phone-pad" />
      <TextInput style={styles.input} placeholder="E-mail" value={email} onChangeText={setEmail} keyboardType="email-address" />

      <Pressable style={styles.botao} onPress={cadastrarAluno}>
        <Text style={styles.textoBotao}>Salvar</Text>
      </Pressable>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  titulo: { fontSize: 24, fontWeight: 'bold', marginBottom: 20 },
  input: {
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 8,
    padding: 12,
    marginBottom: 12
  },
  botao: {
    backgroundColor: '#1976D2',
    padding: 15,
    borderRadius: 8,
    alignItems: 'center',
    marginTop: 10,
    marginBottom: 30
  },
  textoBotao: { color: '#FFFFFF', fontSize: 16, fontWeight: 'bold' }
});
