---
title: Zusammenfassung Vorlesung Lineare Algebra
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

Ein **Ring** $(R,+,\cdot )$ist eine nichtleere Menge $R$ mit zwei Verknüpfungen $+$ und $\cdot$ auf der die folgenden Axiome gelten:

#. $(R,+)$ ist eine abelsche Gruppe *(Addition)*
#. $(R,\cdot )$ ist ein Monoid (also assoziativ und mit neutralem Element, in der Regel *1* genannt) *(Multiplikation)*
#. $\forall a,b,c \in R:$ $a\cdot (b+c)=a\cdot b+a\cdot c$ und $(a+b)\cdot c = a\cdot c + b \cdot c$. *(Distributivgesetze)*
#. Gilt in $(R,\cdot )$ das Kommutativgesetz, so heißt $R$ **kommutativer Ring**. 

(Manche Bücher fordern für die multiplikative Verknüpfung auf einem Ring nur eine Halbgruppe und nennen die obige Struktur *unitärer Ring* oder *Ring mit 1).*

Jeder *Körper* ist auch ein Ring. $(\mathbb{Z}/n\mathbb{Z},+,\cdot )$ ist ist kommutativer Ring, auf einem Vektorraum sei die Menge der linearen Abbildungen $\operatorname{End}(V)$, dann ist
$(\operatorname{End}(V),+,\circ )$ der sogenannte **Endomorphismenring**.

Für $r,s\in R$ heißt $r$ *invertierbar* falls $r\cdot s = s \cdot r = 1$. $r$ heißt dann **Einheit** von $R$ und die Menge der invertierbaren Elemente ist $R^\times$ und $(R^\times , \cdot)$ ist eine Gruppe, die **Einheitengruppe**. Für Multiplikationen, Potenzen und Inverse auf Ringen verwendet man die übliche verkürzte Schreibweise $ab, a^n$, und $a^{-1}$.

Der Vektorraum $\mathbb{K}[T]$ bildet mit der Vektoraddition und der Polynommultiplikation $pq = \sum c_k T^k, c_k = \sum_{i+j=k} p_i q_j$ einen kommutativen Ring $(\mathbb{K}[T],+,\cdot)$, den sogenannten **Polynomring** und seine Einheitengruppe ist $\mathbb{K}\setminus\{ 0\}$.

Rechenregeln für Ringe $(R,+,\cdot )$:

#. $0\cdot a = a \cdot 0 = 0$ für alle $a \in R$.
#. $(-1)a = -a = a \cdot (-1)$ für alle $a \in R$.
#. $(-a)b=-(ab)=a(-b)$ für alle $a,b \in R$.
#. $a\sum b_i = \sum ab_i$ für $a,b_i \in R$.
#. $\left(\sum a_i\right)b = \sum a_ib$ für $a_i,b \in R$.

### Integritätsbereiche

Ein kommutativer Ring $R$ heißt **Integritätsbereich** $\Leftrightarrow:\ \forall\ r_1, r_2 \in R: r_1 \neq 0 \wedge r_2 \neq 0 \Rightarrow r_1 r_2 \neq 0$. Für zwei Elemente $r,s \in R$ sagt man, dass $r$ $s$ **teilt**, kurz $r|s \Leftrightarrow \exists\ r' \in R: rr' = s$ und den folgenden Eigenschaften:

#. $r|s \wedge s|t \Rightarrow r|t$
#. $r|s \wedge s|r \Leftrightarrow r=us$, und $u$ ist eine *Einheit* von $R$.
#. $r|s_1 \wedge r|s_2 \Rightarrow r|(s_1+s_2)$
#. $r|s \Rightarrow \forall s' \in R: r|ss'$

$t\in R, t = \operatorname{ggT}(r,s)$ heißt **größter gemeinsamer Teiler** von $r$ und $s$ falls:

#. $t|r$ und $t|s$
#. Falls $t'|r$ und $t'|s \Rightarrow t'|t$

Da _ggT_ nicht unbedingt eine positive ganze Zahl sein muss, ist dieser nicht eindeutig. Es gilt aber:

#. $u$ ist Einheit von $R \Rightarrow ut$ ist ein größter gemeinsamer Teiler von $r,s$.
#. Sind $t,t'$ größte gemeinsame Teiler von $r,s$, so ist $t=ut'$

### Der Ring der ganzen Zahlen

**Division mit Rest:** $\forall\ a,b \in \mathbb{Z}, a\neq 0: \exists\ q \in \mathbb{Z}, r \in \mathbb{N}_0: b=qa+r \wedge 0 \leq r < |a|.$
