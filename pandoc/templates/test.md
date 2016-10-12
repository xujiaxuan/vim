#  实时数据
## 客户端发送给服务器 示例
```{.haskell}
{
    "command": "value",
    "sql_value":"",
    "page_size":"",
    "page_num":"",
}
command:  包括top_user top_connection top_server top_protocol
sql_value: 具体的sql命令。
page_size:页的大小
page_num:获取的页号
```

## 服务器发送给客户端 示例
```
{
    "status": "0"/"-1",
    "row":"",
    "col":"",
    "array":[
        [a,b],
        [c,d],
        [e,f],
    ]
    }
}
status：执行结果的状态。 0表示返回正确。 -1表示返回错误。
row  行数
col  列数
array:执行结果返回值。
```

#  统计数据
## 直接在内存文件系统查询
```
list_attr_info
detected_summary 
top_unknown
```
#  实时数据
## 客户端发送给服务器 示例
```{.haskell}
{
    "command": "value",
    "sql_value":"",
    "page_size":"",
    "page_num":"",
}
command:  包括top_user top_connection top_server top_protocol
sql_value: 具体的sql命令。
page_size:页的大小
page_num:获取的页号
```

## 服务器发送给客户端 示例
```
{
    "status": "0"/"-1",
    "row":"",
    "col":"",
    "array":[
        [a,b],
        [c,d],
        [e,f],
    ]
    }
}
status：执行结果的状态。 0表示返回正确。 -1表示返回错误。
row  行数
col  列数
array:执行结果返回值。
```

#  统计数据
## 直接在内存文件系统查询
```
list_attr_info
detected_summary 
top_unknown
```
