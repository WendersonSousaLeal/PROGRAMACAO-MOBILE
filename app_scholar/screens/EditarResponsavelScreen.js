import React, { useState } from 'react';
import { Text, TextInput, Pressable, StyleSheet, Alert, ScrollView } from 'react-native';
import { API_URL } from '../services/api';

export default function EditarResponsavelScreen({ route, navigation }) {
  const { item } = route.params;
  const [nome, setNome] = useState(item.nome ?? '');
  const [cpf, setCpf] = useState(item.cpf ?? '');
  const [parentesco, setParentesco] = useState(item.parentesco ?? '');
  const [telefone, setTelefone] = useState(item.telefone ?? '');
  const [email, setEmail] = useState(item.email ?? '');

  const salvar = async () => {
    if (!nome.trim() || !cpf.trim() || !parentesco.trim()) {
      Alert.alert('Atenção', 'Nome completo, CPF, Parentesco são obrigatórios.');
      return;
    }
    try {
      const resposta = await fetch(`${API_URL}/editar_responsavel.php`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          id: item.id,
          nome: nome,
          cpf: cpf,
          parentesco: parentesco,
          telefone: telefone,
          email: email
        })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Responsável atualizado com sucesso!');
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
      <Text style={styles.titulo}>Editar Responsável</Text>
      <TextInput style={styles.input} placeholder="Nome completo" value={nome} onChangeText={setNome} />
      <TextInput style={styles.input} placeholder="CPF" value={cpf} onChangeText={setCpf}
        keyboardType="numeric" />
      <TextInput style={styles.input} placeholder="Parentesco" value={parentesco} onChangeText={setParentesco} />
      <TextInput style={styles.input} placeholder="Telefone" value={telefone} onChangeText={setTelefone}
        keyboardType="phone-pad" />
      <TextInput style={styles.input} placeholder="E-mail" value={email} onChangeText={setEmail}
        keyboardType="email-address" />
      <Pressable style={styles.botao} onPress={salvar}>
        <Text style={styles.textoBotao}>Salvar alterações</Text>
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
