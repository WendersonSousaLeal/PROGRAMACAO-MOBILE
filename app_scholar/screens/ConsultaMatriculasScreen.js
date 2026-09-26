import React, { useState } from 'react';
import { View, Text, Pressable, StyleSheet, ScrollView, ActivityIndicator, Alert } from 'react-native';
import { API_URL } from '../services/api';

export default function ConsultaMatriculasScreen({ navigation }) {
  const [itens, setItens] = useState([]);
  const [carregando, setCarregando] = useState(false);

  const buscar = async () => {
    try {
      setCarregando(true);
      const resposta = await fetch(`${API_URL}/matriculas.php`);
      if (!resposta.ok) throw new Error('Erro ao consultar matrículas.');
      setItens(await resposta.json());
    } catch (erro) {
      console.log(erro);
      Alert.alert('Erro', 'Não foi possível consultar as matrículas.');
    } finally {
      setCarregando(false);
    }
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>Matrículas</Text>
      <Pressable style={styles.botao} onPress={buscar}>
        <Text style={styles.textoBotao}>Buscar matrículas</Text>
      </Pressable>
      <Pressable style={[styles.botao, styles.botaoSecundario]} onPress={() => navigation.navigate('CadastroMatricula')}>
        <Text style={styles.textoBotao}>+ Nova Matrícula</Text>
      </Pressable>

      {carregando && <ActivityIndicator size="large" style={{ marginVertical: 10 }} />}

      {itens.map((item) => (
        <View key={item.id} style={styles.card}>
          <Text style={styles.nome}>{item.aluno}</Text>
          <Text>Turma: {item.turma}</Text>
          <Text>Data da matrícula: {item.data_matricula}</Text>
          <Text>Situação: {item.estado}</Text>
        </View>
      ))}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  titulo: { fontSize: 24, fontWeight: 'bold', marginBottom: 20 },
  botao: { backgroundColor: '#1976D2', padding: 15, borderRadius: 8, alignItems: 'center', marginBottom: 12 },
  botaoSecundario: { backgroundColor: '#2e7d32' },
  textoBotao: { color: '#FFFFFF', fontSize: 16, fontWeight: 'bold' },
  card: { padding: 15, marginBottom: 10, borderWidth: 1, borderColor: '#ccc', borderRadius: 8 },
  nome: { fontWeight: 'bold', marginBottom: 4 }
});
