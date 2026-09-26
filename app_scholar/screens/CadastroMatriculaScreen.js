import React, { useState } from 'react';
import { Text, TextInput, Pressable, StyleSheet, Alert, ScrollView } from 'react-native';
import { API_URL } from '../services/api';

export default function CadastroMatriculaScreen({ navigation }) {
  const [idAluno, setIdAluno] = useState('');
  const [idTurma, setIdTurma] = useState('');
  const [dataMatricula, setDataMatricula] = useState('');
  const [estado, setEstado] = useState('Ativa');

  const salvar = async () => {
    if (!idAluno.trim() || !idTurma.trim() || !dataMatricula.trim()) {
      Alert.alert('Atenção', 'Id do aluno, id da turma e data da matrícula são obrigatórios.');
      return;
    }
    try {
      const resposta = await fetch(`${API_URL}/cadastrar_matricula.php`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          id_aluno: idAluno,
          id_turma: idTurma,
          data_matricula: dataMatricula,
          estado
        })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Matrícula realizada com sucesso!');
        navigation.goBack();
      } else {
        Alert.alert('Erro', resultado.mensagem);
      }
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível realizar a matrícula.');
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Nova Matrícula</Text>
      <TextInput style={styles.input} placeholder="Id do aluno" value={idAluno} onChangeText={setIdAluno} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Id da turma" value={idTurma} onChangeText={setIdTurma} keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Data da matrícula (AAAA-MM-DD)" value={dataMatricula} onChangeText={setDataMatricula} />
      <TextInput style={styles.input} placeholder="Situação (ex: Ativa)" value={estado} onChangeText={setEstado} />
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
