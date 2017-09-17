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

$y \in C$ heißt **Repräsentant** von $C$.

### Beispiele für Äquibalenzrelationen

#. $C_{v} = \{ v + u | u \in U \}$. Die $C_{v}$ heißen **Nebenklassen von $V$ nach/modulo $U$**.
#. $C_{a} = \{a+kn|k \in \mathbb{Z}\}$. Die $C_{a}$ heißen **Restklassen von $\mathbb{Z}$ nach/modulo $\mathbb{Z}n$**, kurz $\bar{a}$.
