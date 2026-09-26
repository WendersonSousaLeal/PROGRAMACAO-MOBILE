import React, { useState } from 'react';
import {
  View,
  Text,
  Pressable,
  StyleSheet,
  ScrollView,
  ActivityIndicator,
  Alert
} from 'react-native';

import { API_URL } from '../services/api';

export default function ConsultaAlunosScreen({ navigation }) {
  const [alunos, setAlunos] = useState([]);
  const [carregando, setCarregando] = useState(false);

  // READ: busca alunos ativos na API
  const buscarAlunos = async () => {
    try {
      setCarregando(true);
      const resposta = await fetch(`${API_URL}/alunos.php`);

      if (!resposta.ok) {
        throw new Error('Erro ao consultar alunos.');
      }

      const dados = await resposta.json();
      setAlunos(dados);
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível consultar os alunos.');
    } finally {
      setCarregando(false);
    }
  };

  // DELETE lógico: pede confirmação e chama desativarAluno()
  const confirmarDesativacao = (aluno) => {
    Alert.alert(
      'Excluir aluno',
      `Deseja realmente excluir ${aluno.nome}?`,
      [
        { text: 'Cancelar' },
        { text: 'Excluir', onPress: () => desativarAluno(aluno.id) }
      ]
    );
  };

  const desativarAluno = async (id) => {
    try {
      const resposta = await fetch(`${API_URL}/desativar_aluno.php`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id })
      });

      if (!resposta.ok) {
        throw new Error('Erro ao excluir aluno.');
      }

      const resultado = await resposta.json();

      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno removido da lista.');
        buscarAlunos();
      }
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível excluir o aluno.');
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Consulta de Alunos</Text>

      <Pressable style={styles.botao} onPress={buscarAlunos}>
        <Text style={styles.textoBotao}>Buscar alunos</Text>
      </Pressable>

      <Pressable
        style={[styles.botao, styles.botaoSecundario]}
        onPress={() => navigation.navigate('CadastroAluno')}
      >
        <Text style={styles.textoBotao}>+ Novo Aluno</Text>
      </Pressable>

      {carregando && <ActivityIndicator size="large" style={{ marginVertical: 10 }} />}

      {alunos.map((aluno) => (
        <View key={aluno.id} style={styles.card}>
          <Text style={styles.nome}>Nome: {aluno.nome}</Text>
          <Text>CPF: {aluno.cpf}</Text>
          <Text>RA: {aluno.ra}</Text>
          <Text>Nascimento: {aluno.data_nascimento}</Text>
          <Text>Rua: {aluno.rua} (id {aluno.id_rua})</Text>
          <Text>Telefone: {aluno.telefone}</Text>
          <Text>E-mail: {aluno.email}</Text>

          <View style={styles.linhaBotoes}>
            <Pressable
              style={[styles.botaoPequeno, { backgroundColor: '#1976D2' }]}
              onPress={() => navigation.navigate('EditarAluno', { aluno })}
            >
              <Text style={styles.textoBotao}>Editar</Text>
            </Pressable>

            <Pressable
              style={[styles.botaoPequeno, { backgroundColor: '#c62828' }]}
              onPress={() => confirmarDesativacao(aluno)}
            >
              <Text style={styles.textoBotao}>Excluir</Text>
            </Pressable>
          </View>
        </View>
      ))}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  titulo: { fontSize: 24, fontWeight: 'bold', marginBottom: 20 },
  botao: {
    backgroundColor: '#1976D2',
    padding: 15,
    borderRadius: 8,
    alignItems: 'center',
    marginBottom: 12
  },
  botaoSecundario: { backgroundColor: '#2e7d32' },
  textoBotao: { color: '#FFFFFF', fontSize: 16, fontWeight: 'bold' },
  card: {
    padding: 15,
    marginBottom: 10,
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 8
  },
  nome: { fontWeight: 'bold', marginBottom: 4 },
  linhaBotoes: { flexDirection: 'row', gap: 10, marginTop: 10 },
  botaoPequeno: {
    flex: 1,
    padding: 10,
    borderRadius: 8,
    alignItems: 'center'
  }
});
