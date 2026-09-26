import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

export default function SobreScreen() {
  return (
    <ScrollView style={styles.container}>
      <Text style={styles.titulo}>APP_SCHOLAR</Text>
      <Text style={styles.versao}>Versão 1.0.0</Text>

      <Text style={styles.secao}>Sobre o App</Text>
      <Text style={styles.texto}>
        O App_Scholar é um sistema acadêmico desenvolvido para auxiliar escolas na gestão de
        alunos, professores, turmas, cursos, avaliações e muito mais.
      </Text>

      <Text style={styles.secao}>Tecnologias</Text>
      <Text style={styles.texto}>
        Desenvolvido com React Native (Expo), API em PHP com PDO e banco de dados MySQL.
      </Text>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  titulo: { fontSize: 24, fontWeight: 'bold', textAlign: 'center', marginTop: 10 },
  versao: { textAlign: 'center', color: '#777', marginBottom: 20 },
  secao: { fontSize: 16, fontWeight: 'bold', marginTop: 15, marginBottom: 5 },
  texto: { fontSize: 14, color: '#333', lineHeight: 20 }
});
