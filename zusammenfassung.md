---
title: Zusammenfasung Vorlesung Lineare Algebra
author: Hendrik Belitz
date: September 2017
lang: de-DE
geometry: a4paper
textwidth: 16cm
geometry: margin=2cm
fontsize: 12pt
...

# Kurseinheit 1: Algebraische Strukturen

## Äquivalenzrelationen

Sei $(x,y)$ ein Element von $R \subseteq M \times M$, oder auch $x \sim_{R} y$ bzw. $x \sim y$. Dann heißt $R$ **Äquivalenzrelation**, falls sie folgende Bedingungen erfüllt:

* $\forall x \in M: x \sim x$ (Reflexion)
* $\forall x,y \in M: x \sim y \Rightarrow y \sim x$ (Symmetrie)
* $\forall x,y,z \in M: x \sim y \wedge y \sim z \Rightarrow x \sim z$ (Transitivität)

Für eine Äquivalenzrelation $R$ heißt $C \subseteq M$ _**Äquivalenzklasse** bezüglich_ $R$, falls:

* $C \neq \emptyset$
* $\forall x,y \in C: x \sim y$
* $\forall x \in C$ und $y \in M: x \sim y \Rightarrow y \in C$

$y \in C$ heißt **Repräsentant** von $C$. Ist $x \in M$ und $R$ eine Äquivalenzrelation auf $M$, so liegt $x$ in genau einer $Äquivalenzklasse$ bzgl. $R$. $Äquivalenzklassen$ bzgl. $R$ sind immer *gleich* oder *disjunkt*. Die Aufteilung von $M$ in disjunkte Äquivalenzklassen heißt **Klasseneinteilung**.

### Beispiele für Äquivalenzrelationen

#. $C_{v} = \{ v + u | u \in U \}$. Die $C_{v}$ heißen **Nebenklassen von $V$ nach/modulo $U$**.
#. $C_{a} = \{a+kn|k \in \mathbb{Z}\}$. Die $C_{a}$ heißen **Restklassen von $\mathbb{Z}$ nach/modulo $\mathbb{Z}n$**, kurz $\bar{a}$.

### Rechnen mit Restklassen

Es ist $\mathbb{Z}$ modulo $n\mathbb{Z}$ definiert als $\mathbb{Z}/n\mathbb{Z}=\{\bar{0}, \bar{1}, \ldots, \overline{n-1} \}$, dabei ist $\bar{i} = \{i+kn|k\in\mathbb{Z}\}$.

Sei die Menge $M$ nicht leer. Dann heißt $\ast$ eine **Verknüpfung** auf $M$ und ist eine Abbildung $\ast: M \times M \rightarrow M$, z.B.
$\bar{a}+\bar{b}=\overline{a+b}$ oder $\bar{a}\cdot\bar{b}=\overline{a\cdot b}$ für $\bar{a},\bar{b}\in \mathbb{Z}/n\mathbb{Z}$.

Solche Verknüpfungen müssen **wohldefiniert**, also unabhängig von der Wahl der Repräsentaten sein.

### Faktorräume

Ist $V$ ein Vektorraum über einen Körper $\mathbb{K}$ und $U$ ein Unterraum von $V$, dann heißt die Menge aller Nebenklassen $\{v+U|v\in V\}$ **Faktorraum von $V$ nach $U$** oder **Quotientenraum $V$ modulo $U$**, kurz $V/U$. Dieser ist ebenfalls ein $\mathbb{K}$-Vektorraum.

Sei dim$(V)=n<\infty$ und $U$ ein Unterraum von $V$. Sei dim$(U)=m$. Dann ist dim$(V/U)=n-m$.

## Gruppen
