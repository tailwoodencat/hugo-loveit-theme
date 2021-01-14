---
title: "map mermaid"
date: 2020-11-18T22:38:00+08:00
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

## documentation

[mermaid](https://mermaidjs.github.io/) 是一个可以帮助你在文章中生成图表和流程图的库, 类似 Markdown 的语法.

> tips: must open `math: true`

## base

```
{{</* mermaid */>}}
graph LR;
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
{{</* /mermaid */>}}
```

{{< mermaid >}}
graph LR;
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
{{< /mermaid >}}

### lines

```
{{</* mermaid */>}}
graph LR
   Arrow-Start-->Arrow-End;
   Beta:Multi-Start <--> Beta:Multi-End;
   open-link---next-link;
   text-on---|line txt|link;
   other-text-on-- line txt !--- other-link;
   arrow-text-Start-->|line txt|arrow-text-End;
   Dotted-link-Start-.->Dotted-link-End;
   Dotted-link-text-Start-.->|line txt|Dotted-link-text-End;
   Thick-link-Start==>Thick-link-End;
   Thick-link-text-Start== line txt ==>Thick-link-text-End;
{{</* /mermaid */>}}
```

{{< mermaid >}}
graph LR
   Arrow-Start-->Arrow-End;
   Beta:Multi-Start <--> Beta:Multi-End;
   open-link---next-link;
   text-on---|line txt|link;
   other-text-on-- line txt !--- other-link;
   arrow-text-Start-->|line txt|arrow-text-End;
   Dotted-link-Start-.->Dotted-link-End;
   Dotted-link-text-Start-.->|line txt|Dotted-link-text-End;
   Thick-link-Start==>Thick-link-End;
   Thick-link-text-Start== line txt ==>Thick-link-text-End;
{{< /mermaid >}}