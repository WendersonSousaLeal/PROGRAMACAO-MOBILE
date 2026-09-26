import React, { useState } from 'react';
import { Text, TextInput, Pressable, StyleSheet, Alert, ScrollView } from 'react-native';
import { API_URL } from '../services/api';

export default function CadastroAvaliacaoScreen({ navigation }) {
  const [idAluno, setIdAluno] = useState('');
  const [idDisciplina, setIdDisciplina] = useState('');
  const [dataAvaliacao, setDataAvaliacao] = useState('');

  const salvar = async () => {
    if (!idAluno.trim() || !idDisciplina.trim() || !dataAvaliacao.trim()) {
      Alert.alert('Atenção', 'Id do aluno, id da disciplina e data são obrigatórios.');
      return;
    }
    try {
      const resposta = await fetch(`${API_URL}/cadastrar_avaliacao.php`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          id_aluno: idAluno,
          id_disciplina: idDisciplina,
          data_avaliacao: dataAvaliacao
        })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Avaliação cadastrada com sucesso!');
        navigation.goBack();
      } else {
        Alert.alert('Erro', resultado.mensagem);
      }
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível cadastrar a avaliação.');
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Nova Avaliação</Text>
      <TextInput style={styles.input} placeholder="Id do aluno" value={idAluno} onChangeText={setIdAluno} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Id da disciplina" value={idDisciplina} onChangeText={setIdDisciplina} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Data da avaliação (AAAA-MM-DD)" value={dataAvaliacao} onChangeText={setDataAvaliacao} />
      <Pressable style={styles.botao} onPress={salvar}>
        <Text style={styles.textoBotao}>Salvar</Text>
      </Pressable>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  titulo: { fontSize: 24, fontWeight: 'bold', marginBottom: 20 },
  input: { borderWidth: 1, borderColor: '#ccc', borderRadius: 8, padding: 12, marginBottom: 12 },
  botao: { backgroundColor: '#1976D2', padding: 15, borderRadius: 8, alignItems: 'center', marginTop: 10, marginBottom: 30 },
  textoBotao: { color: '#FFFFFF', fontSize: 16, fontWeight: 'bold' }
});
