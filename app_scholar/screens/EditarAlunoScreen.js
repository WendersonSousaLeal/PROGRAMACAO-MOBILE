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

export default function EditarAlunoScreen({ route, navigation }) {
  const { aluno } = route.params;

  const [nome, setNome] = useState(aluno.nome ?? '');
  const [cpf, setCpf] = useState(aluno.cpf ?? '');
  const [ra, setRa] = useState(aluno.ra ?? '');
  const [dataNascimento, setDataNascimento] = useState(aluno.data_nascimento ?? '');
  const [numeroCasa, setNumeroCasa] = useState(String(aluno.numero_casa ?? ''));
  const [complemento, setComplemento] = useState(aluno.complemento ?? '');
  const [idRua, setIdRua] = useState(String(aluno.id_rua ?? ''));
  const [telefone, setTelefone] = useState(aluno.telefone ?? '');
  const [email, setEmail] = useState(aluno.email ?? '');

  const editarAluno = async () => {
    if (!nome.trim()) {
      Alert.alert('Atenção', 'O nome é obrigatório.');
      return;
    }

    try {
      const resposta = await fetch(`${API_URL}/editar_aluno.php`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          id: aluno.id,
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
        throw new Error('Erro ao editar aluno.');
      }

      const resultado = await resposta.json();

      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno atualizado com sucesso!');
        navigation.goBack();
      } else {
        Alert.alert('Erro', resultado.mensagem || 'Não foi possível atualizar o aluno.');
      }
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível atualizar o aluno.');
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Editar Aluno</Text>

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
      <TextInput style={styles.input} placeholder="Id da rua" value={idRua} onChangeText={setIdRua} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Telefone" value={telefone} onChangeText={setTelefone} keyboardType="phone-pad" />
      <TextInput style={styles.input} placeholder="E-mail" value={email} onChangeText={setEmail} keyboardType="email-address" />

      <Pressable style={styles.botao} onPress={editarAluno}>
        <Text style={styles.textoBotao}>Salvar alterações</Text>
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
