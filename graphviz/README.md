---
# install
sudo apt-get install graphviz

# create png file
`dot example.dot -T png -o example.png`

# create dot file
```
graph example1 {
Server1 -- Server2
Server2 -- Server3
Server3 -- Server1
}
```
![example](./example.png)


```
digraph example2 {
Server1 -> Server2
Server2 -> Server3
Server3 -> Server1
}
```
![example2](./example2.png)

```
digraph example3 {
Server1 -> Server2
Server2 -> Server3
Server3 -> Server1

Server1 [shape=box, label="Server1\nWeb Server", fillcolor="#ABACBA", style=filled]
Server2 [shape=triangle, label="Server2\nApp Server", fillcolor="#DDBCBC", style=filled]
Server3 [shape=circle, label="Server3\nDatabase Server", fillcolor="#FFAA22",style=filled]
}
```
![example3](./example3.png)

[使用 Graphviz 生成自动化系统图][]

[使用 Graphviz 生成自动化系统图]:  https://www.ibm.com/developerworks/cn/aix/library/au-aix-graphviz/
