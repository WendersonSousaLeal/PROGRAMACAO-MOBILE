import React, { useState } from 'react';
import { Text, TextInput, Pressable, StyleSheet, Alert, ScrollView } from 'react-native';
import { API_URL } from '../services/api';

export default function CadastroTurmaScreen({ navigation }) {

  const [sala, setSala] = useState('');
  const [turno, setTurno] = useState('');
  const [anoLetivo, setAnoLetivo] = useState('');
  const [idCurso, setIdCurso] = useState('');

  const salvar = async () => {
    if (!sala.trim() || !turno.trim() || !anoLetivo.trim()) {
      Alert.alert('Atenção', 'Sala/Nome da turma, Turno, Ano letivo (ex: 2026) são obrigatórios.');
      return;
    }
    try {
      const resposta = await fetch(`${API_URL}/cadastrar_turma.php`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          sala: sala,
          turno: turno,
          ano_letivo: anoLetivo,
          id_curso: idCurso
        })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Turma cadastrado com sucesso!');
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
      <Text style={styles.titulo}>Cadastro de Turma</Text>
      <TextInput style={styles.input} placeholder="Sala/Nome da turma" value={sala} onChangeText={setSala} />
      <TextInput style={styles.input} placeholder="Turno" value={turno} onChangeText={setTurno} />
      <TextInput style={styles.input} placeholder="Ano letivo (ex: 2026)" value={anoLetivo} onChangeText={setAnoLetivo}
        keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Id do curso (opcional)" value={idCurso} onChangeText={setIdCurso}
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
