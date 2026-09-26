import * as React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

import HomeScreen from './screens/HomeScreen';
import SobreScreen from './screens/SobreScreen';

import ConsultaAlunosScreen from './screens/ConsultaAlunosScreen';
import CadastroAlunoScreen from './screens/CadastroAlunoScreen';
import EditarAlunoScreen from './screens/EditarAlunoScreen';

import ConsultaProfessoresScreen from './screens/ConsultaProfessoresScreen';
import CadastroProfessorScreen from './screens/CadastroProfessorScreen';
import EditarProfessorScreen from './screens/EditarProfessorScreen';

import ConsultaTurmasScreen from './screens/ConsultaTurmasScreen';
import CadastroTurmaScreen from './screens/CadastroTurmaScreen';
import EditarTurmaScreen from './screens/EditarTurmaScreen';

import ConsultaCursosScreen from './screens/ConsultaCursosScreen';
import CadastroCursoScreen from './screens/CadastroCursoScreen';
import EditarCursoScreen from './screens/EditarCursoScreen';

import ConsultaDisciplinasScreen from './screens/ConsultaDisciplinasScreen';
import CadastroDisciplinaScreen from './screens/CadastroDisciplinaScreen';
import EditarDisciplinaScreen from './screens/EditarDisciplinaScreen';

import ConsultaMatriculasScreen from './screens/ConsultaMatriculasScreen';
import CadastroMatriculaScreen from './screens/CadastroMatriculaScreen';

import ConsultaResponsaveisScreen from './screens/ConsultaResponsaveisScreen';
import CadastroResponsavelScreen from './screens/CadastroResponsavelScreen';
import EditarResponsavelScreen from './screens/EditarResponsavelScreen';

import ConsultaAvaliacoesScreen from './screens/ConsultaAvaliacoesScreen';
import CadastroAvaliacaoScreen from './screens/CadastroAvaliacaoScreen';

import ConsultaCoordenadoresScreen from './screens/ConsultaCoordenadoresScreen';
import CadastroCoordenadorScreen from './screens/CadastroCoordenadorScreen';
import EditarCoordenadorScreen from './screens/EditarCoordenadorScreen';

import ConsultaBoletinsScreen from './screens/ConsultaBoletinsScreen';

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Home">
        <Stack.Screen name="Home" component={HomeScreen} options={{ title: 'App_Scholar' }} />
        <Stack.Screen name="Sobre" component={SobreScreen} options={{ title: 'Sobre' }} />

        <Stack.Screen name="ConsultaAlunos" component={ConsultaAlunosScreen} options={{ title: 'Alunos' }} />
        <Stack.Screen name="CadastroAluno" component={CadastroAlunoScreen} options={{ title: 'Novo Aluno' }} />
        <Stack.Screen name="EditarAluno" component={EditarAlunoScreen} options={{ title: 'Editar Aluno' }} />

        <Stack.Screen name="ConsultaProfessores" component={ConsultaProfessoresScreen} options={{ title: 'Professores' }} />
        <Stack.Screen name="CadastroProfessor" component={CadastroProfessorScreen} options={{ title: 'Novo Professor' }} />
        <Stack.Screen name="EditarProfessor" component={EditarProfessorScreen} options={{ title: 'Editar Professor' }} />

        <Stack.Screen name="ConsultaTurmas" component={ConsultaTurmasScreen} options={{ title: 'Turmas' }} />
        <Stack.Screen name="CadastroTurma" component={CadastroTurmaScreen} options={{ title: 'Nova Turma' }} />
        <Stack.Screen name="EditarTurma" component={EditarTurmaScreen} options={{ title: 'Editar Turma' }} />

        <Stack.Screen name="ConsultaCursos" component={ConsultaCursosScreen} options={{ title: 'Cursos' }} />
        <Stack.Screen name="CadastroCurso" component={CadastroCursoScreen} options={{ title: 'Novo Curso' }} />
        <Stack.Screen name="EditarCurso" component={EditarCursoScreen} options={{ title: 'Editar Curso' }} />

        <Stack.Screen name="ConsultaDisciplinas" component={ConsultaDisciplinasScreen} options={{ title: 'Disciplinas' }} />
        <Stack.Screen name="CadastroDisciplina" component={CadastroDisciplinaScreen} options={{ title: 'Nova Disciplina' }} />
        <Stack.Screen name="EditarDisciplina" component={EditarDisciplinaScreen} options={{ title: 'Editar Disciplina' }} />

        <Stack.Screen name="ConsultaMatriculas" component={ConsultaMatriculasScreen} options={{ title: 'Matrículas' }} />
        <Stack.Screen name="CadastroMatricula" component={CadastroMatriculaScreen} options={{ title: 'Nova Matrícula' }} />

        <Stack.Screen name="ConsultaResponsaveis" component={ConsultaResponsaveisScreen} options={{ title: 'Responsáveis' }} />
        <Stack.Screen name="CadastroResponsavel" component={CadastroResponsavelScreen} options={{ title: 'Novo Responsável' }} />
        <Stack.Screen name="EditarResponsavel" component={EditarResponsavelScreen} options={{ title: 'Editar Responsável' }} />

        <Stack.Screen name="ConsultaAvaliacoes" component={ConsultaAvaliacoesScreen} options={{ title: 'Avaliações' }} />
        <Stack.Screen name="CadastroAvaliacao" component={CadastroAvaliacaoScreen} options={{ title: 'Nova Avaliação' }} />

        <Stack.Screen name="ConsultaCoordenadores" component={ConsultaCoordenadoresScreen} options={{ title: 'Coordenadores' }} />
        <Stack.Screen name="CadastroCoordenador" component={CadastroCoordenadorScreen} options={{ title: 'Novo Coordenador' }} />
        <Stack.Screen name="EditarCoordenador" component={EditarCoordenadorScreen} options={{ title: 'Editar Coordenador' }} />

        <Stack.Screen name="ConsultaBoletins" component={ConsultaBoletinsScreen} options={{ title: 'Boletins' }} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
