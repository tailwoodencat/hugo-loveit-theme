---
title: "Markdown Latex"
date: 2020-11-18T18:38:00+08:00
description: "desc txt url"
draft: false
categories: [txt]
tags: [txt,hugo]
toc:
  enable: true
  auto: false
code:
  copy: true
math:
  enable: true
mapbox:
  accessToken: ""
share:
  enable: true
comment:
  enable: true
---

## 上标和下标

```Latex
$$ A_{222} $$
$$ A^{333} $$
```

展现为

$$ A_{222} $$
$$ A^{333} $$

## 分数表达

```Latex
$$ \frac{x^{2}y^{2}}{x+y} $$
```

展示为

$$ \frac{x^{2}y^{2}}{x+y} $$

## 三角函数

```Latex
$$ \cos2\theta = cos^2\theta - \sin^2 \theta \\ = 2\cos^2\theta -1 $$
```

展示为

$$ \cos2\theta = cos^2\theta - \sin^2 \theta \\ = 2\cos^2\theta -1 $$

## 角标和开方

```Latex
$$ c = \sqrt{a^{2}+b_{xy}^{2} +e^{x}} $$
```

展示为

$$ c = \sqrt{a^{2}+b_{xy}^{2} +e^{x}} $$

## 求和与联乘

```Latex
$$ \sum_{i=0}^{n} $$
$$ \prod_\epsilon $$
```

展示为

$$ \sum_{i=0}^{n} $$
$$ \prod_\epsilon $$

## 微分与积分

```Latex
$$ \int_{a}^{\pi} f(x) \,dx $$
```

展示为

$$ \int_{a}^{\pi} f(x) \,dx $$

## 极限与偏导数

```Latex
$$ \lim_{x \to +\infty}\frac{1}{x} $$
$$ \frac{\partial^2 u}{\partial z^2} $$
```

展示为

$$ \lim_{x \to +\infty}\frac{1}{x} $$
$$ \frac{\partial^2 u}{\partial z^2} $$

## 矩阵

```Latex
$$ \begin{equation}
A=\left[
\begin{matrix}
1&2&3&\\
2&2&3&\\
3&2&3&
\end{matrix}
\right]
\end{equation} $$
```

展示为

$$ \begin{equation}
A=\left[
\begin{matrix}
1&2&3&\\
2&2&3&\\
3&2&3&
\end{matrix}
\right]
\end{equation} $$

## 特殊符号

左引号 `'` 使用 ```
右引号 `'` 使用 `'`

若为双引号，则各敲击两下

# 范例

## 信息熵

```Latex
$$ H(x) = - \sum_{i=1}^{n} P_{i} log_{2} P_{i} $$
```

$$ H(x) = - \sum_{i=1}^{n} P_{i} log_{2} P_{i} $$
