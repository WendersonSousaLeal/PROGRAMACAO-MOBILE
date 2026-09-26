import React, { useState } from 'react';
import { Text, TextInput, Pressable, StyleSheet, Alert, ScrollView } from 'react-native';
import { API_URL } from '../services/api';

export default function CadastroCursoScreen({ navigation }) {

  const [nome, setNome] = useState('');
  const [cargaHoraria, setCargaHoraria] = useState('');
  const [duracao, setDuracao] = useState('');
  const [descricao, setDescricao] = useState('');
  const [idCoordenador, setIdCoordenador] = useState('');

  const salvar = async () => {
    if (!nome.trim() || !descricao.trim()) {
      Alert.alert('Atenção', 'Nome do curso, Descrição são obrigatórios.');
      return;
    }
    try {
      const resposta = await fetch(`${API_URL}/cadastrar_curso.php`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          nome: nome,
          carga_horaria: cargaHoraria,
          duracao: duracao,
          descricao: descricao,
          id_coordenador: idCoordenador
        })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Curso cadastrado com sucesso!');
        navigation.goBack();
      } else {
        Alert.alert('Erro', resultado.mensagem);
      }
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível salvar.');
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Cadastro de Curso</Text>
      <TextInput style={styles.input} placeholder="Nome do curso" value={nome} onChangeText={setNome} />
      <TextInput style={styles.input} placeholder="Carga horária (horas)" value={cargaHoraria} onChangeText={setCargaHoraria}
        keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Duração (anos)" value={duracao} onChangeText={setDuracao}
        keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Descrição" value={descricao} onChangeText={setDescricao} />
      <TextInput style={styles.input} placeholder="Id do coordenador (opcional)" value={idCoordenador} onChangeText={setIdCoordenador}
        keyboardType="numeric" />
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
