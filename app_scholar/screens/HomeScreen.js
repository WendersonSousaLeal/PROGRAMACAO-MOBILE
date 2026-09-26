import React from 'react';
import { View, Text, Pressable, StyleSheet, ScrollView } from 'react-native';

const modulos = [
  { titulo: 'Alunos', rota: 'ConsultaAlunos' },
  { titulo: 'Professores', rota: 'ConsultaProfessores' },
  { titulo: 'Turmas', rota: 'ConsultaTurmas' },
  { titulo: 'Cursos', rota: 'ConsultaCursos' },
  { titulo: 'Disciplinas', rota: 'ConsultaDisciplinas' },
  { titulo: 'Matrículas', rota: 'ConsultaMatriculas' },
  { titulo: 'Responsáveis', rota: 'ConsultaResponsaveis' },
  { titulo: 'Avaliações', rota: 'ConsultaAvaliacoes' },
  { titulo: 'Coordenadores', rota: 'ConsultaCoordenadores' },
  { titulo: 'Boletins', rota: 'ConsultaBoletins' }
];

export default function HomeScreen({ navigation }) {
  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>APP_SCHOLAR</Text>
      <Text style={styles.subtitulo}>Sistema Acadêmico Escolar</Text>

      <View style={styles.grid}>
        {modulos.map((m) => (
          <Pressable key={m.rota} style={styles.botao} onPress={() => navigation.navigate(m.rota)}>
            <Text style={styles.textoBotao}>{m.titulo}</Text>
          </Pressable>
        ))}
      </View>

      <Pressable style={styles.botaoSobre} onPress={() => navigation.navigate('Sobre')}>
        <Text style={styles.textoBotao}>Sobre</Text>
      </Pressable>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  titulo: { fontSize: 26, fontWeight: 'bold', textAlign: 'center', marginTop: 10 },
  subtitulo: { fontSize: 14, textAlign: 'center', marginBottom: 20, color: '#555' },
  grid: { flexDirection: 'row', flexWrap: 'wrap', justifyContent: 'space-between' },
  botao: {
    backgroundColor: '#1976D2',
    width: '48%',
    padding: 18,
    borderRadius: 8,
    alignItems: 'center',
    marginBottom: 12
  },
  botaoSobre: {
    backgroundColor: '#555',
    padding: 15,
    borderRadius: 8,
    alignItems: 'center',
    marginTop: 10,
    marginBottom: 30
  },
  textoBotao: { color: '#FFFFFF', fontSize: 15, fontWeight: 'bold', textAlign: 'center' }
});
