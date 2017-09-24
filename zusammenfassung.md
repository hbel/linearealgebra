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

$\mathrm{GL}_{n}(\mathbb{K})=\{A \in M_{nn}(\mathbb{K}) | A\ \text{ist invertierbar}\}$ bildet mit der Matrizenmultiplikation eine Gruppe, die *allgemeine lineare Gruppe*. Ebenso bildet $(\mathrm{GL}(V), \circ )$ für den Vektorraum $V$ und die Komposition von Abbildungen eine Gruppe, die *allgemeine lineare Gruppe* von $V$. Ist $\operatorname{dim}_{\mathbb{K}}(V)\geq 2$, so ist diese Gruppe nicht abelsch.

### Symmetrische Gruppen und Permutationen

Für einen nichtleere Menge $M$ bildet die Menge der bijektiven Abbildungen $S_M=\{f:M\rightarrow M | f\ \text{ist bijektiv}\}$ zusammen mit der Komposition von Abbildungen die **symmetrische Gruppe auf $M$** $(S_M , \circ)$.

Ist $M=\{1,\ldots ,n\}$, so heißt $S_n$ die **symmetrische Gruppe in $n$ Buchstaben** und $\sigma \in S_n$ heißt **Permutation**.

Als Kurzschreibweise verwendet man üblicherweise:
$$
\sigma = \begin{pmatrix} 
1 & 2 & 3 & \cdots & n \\
\sigma(1) &\sigma(2) &\sigma(3) & \cdots & \sigma(n) \\
\end{pmatrix}
$$

Für eine Permutation heißt die **Signumsfunktion/Signatur** $\operatorname{sgn}(\sigma)$:
$$
\operatorname{sgn}(\sigma) = \begin{cases}
1 \ \text{falls die Anzahl Paare} (i,j)\ \text{mit}\ i>j\ \text{und}\ \sigma(i)<\sigma(j)\ \text{gerade ist} \\
-1 \ \text{falls die Anzahl Paare} (i,j)\ \text{mit}\ i>j\ \text{und}\ \sigma(i)<\sigma(j)\ \text{ungerade ist} \\
\end{cases}
$$

Ein Paar $i,j$ mit $i>j$ und $\sigma(i)<\sigma(j)$ heißt **Fehlstand** von $\sigma$.

$\sigma \in S_n$ heißt **Transposition**, falls $\sigma$ genau zwei Elemente vertauscht und die übrigen festhält.
$\sigma$ heißt **Nachbartransposition**, falls $\sigma$ zwei benachbarte Elemente $i$ und $i+1$ vertauscht.
Transpositionen sind damit invers zu sich selbst.

#. Für $n\geq 2$ ist jede Permutation ist eine Komposition von Transitionen.
#. Jede Transposition ist eine Komposition einer ungeraden Anzahl von Nachbartranspositionen.
#. $\operatorname{sgn}(\tau) = -1$ für alle Nachbartranspositionen.
#. $\operatorname{sgn}(\sigma \circ \tau) =\operatorname{sgn}(\sigma)\cdot\operatorname{sgn}(\tau)$

## Ringe
