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

Für eine Verknüpfung $\ast$ auf $M$ sei folgendes definiert:

* $\ast$ heißt **kommutativ** $:= a\ast b = b\ast a$, mit $a,b \in M$.
* $\ast$ heißt **assoziativ** $:= (a\ast b)\ast c = a \ast (b\ast c)$, mit $a,b,c \in M$.
* $e\in M$ heißt **neutrales Element** von $\ast$ $:= e\ast a = a$ und $a \ast e = a$ $\forall a \in M$.
* Für ein neutrales Element $e \in M$ und ein $m \in M$ heißt $m$ **invertierbar** $:= \exists m'\in M: m\ast m'= e$ und $m'\ast m = e$.

$(G,\ast)$ heißt eine **Gruppe**, falls $\ast$ assoziativ ist, $G$ ein neutrales Element besitzt und alle $m\in G$ invertierbar sind. Ist $G$ zudem kommutativ, so heißt $G$ **abelsche Gruppe**. Die inversen Elemente und das neutrale Element der Gruppe sind jeweils eindeutig bestimmt. In *additiven* *(multiplikativen)* Gruppen wird das Verknüpfungssymbol $+ (\cdot)$ verwendet und $e$ heißt *Nullelement (Einselement)* und für $m \in G$ heißt $-m$ $(m^{-1})$ *Inverses*.

$\mathrm{GL}_{n}(\mathbb{K})=\{A \in M_{nn}(\mathbb{K}) | A\ \mathrm{ist}\ \mathrm{invertierbar}\}$ bildet mit der Matrizenmultiplikation eine Gruppe, die *allgemeine lineare Gruppe*. Ebenso bildet $(\mathrm{GL}(V), \circ )$ für den Vektorraum $V$ und die Komposition von Abbildungen eine Gruppe, die *allgemeine lineare Gruppe* von $V$. Ist $\operatorname{dim}_{\mathbb{K}}(V)\geq 2$, so ist diese Gruppe nicht abelsch.
