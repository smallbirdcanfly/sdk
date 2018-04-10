.class public Lcom/pengyouwan/framework/volley/toolbox/f;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 133
    :goto_0
    return-wide v1

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/b$a;
    .locals 29
    .param p0, "response"    # Lcom/pengyouwan/framework/volley/j;

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 43
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pengyouwan/framework/volley/j;->c:Ljava/util/Map;

    .line 45
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v16, 0x0

    .line 46
    .local v16, "serverDate":J
    const-wide/16 v9, 0x0

    .line 47
    .local v9, "lastModified":J
    const-wide/16 v19, 0x0

    .line 48
    .local v19, "serverExpires":J
    const-wide/16 v21, 0x0

    .line 49
    .local v21, "softExpire":J
    const-wide/16 v3, 0x0

    .line 50
    .local v3, "finalExpire":J
    const-wide/16 v11, 0x0

    .line 51
    .local v11, "maxAge":J
    const-wide/16 v23, 0x0

    .line 52
    .local v23, "staleWhileRevalidate":J
    const/4 v5, 0x0

    .line 53
    .local v5, "hasCacheControl":Z
    const/4 v13, 0x0

    .line 55
    .local v13, "mustRevalidate":Z
    const/16 v18, 0x0

    .line 58
    .local v18, "serverEtag":Ljava/lang/String;
    const-string v27, "Date"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 59
    .local v6, "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 60
    invoke-static {v6}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Ljava/lang/String;)J

    move-result-wide v16

    .line 63
    :cond_0
    const-string v27, "Cache-Control"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 64
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 65
    const/4 v5, 0x1

    .line 66
    const-string v27, ","

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 67
    .local v26, "tokens":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v8, v0, :cond_5

    .line 87
    .end local v8    # "i":I
    .end local v26    # "tokens":[Ljava/lang/String;
    :cond_1
    const-string v27, "Expires"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 88
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 89
    invoke-static {v6}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Ljava/lang/String;)J

    move-result-wide v19

    .line 92
    :cond_2
    const-string v27, "Last-Modified"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 93
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 94
    invoke-static {v6}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Ljava/lang/String;)J

    move-result-wide v9

    .line 97
    :cond_3
    const-string v27, "ETag"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "serverEtag":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 101
    .restart local v18    # "serverEtag":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 102
    const-wide/16 v27, 0x3e8

    mul-long v27, v27, v11

    add-long v21, v14, v27

    .line 103
    if-eqz v13, :cond_c

    move-wide/from16 v3, v21

    .line 112
    :cond_4
    :goto_1
    new-instance v2, Lcom/pengyouwan/framework/volley/b$a;

    invoke-direct {v2}, Lcom/pengyouwan/framework/volley/b$a;-><init>()V

    .line 113
    .local v2, "entry":Lcom/pengyouwan/framework/volley/b$a;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/volley/j;->b:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v2, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    .line 114
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/pengyouwan/framework/volley/b$a;->b:Ljava/lang/String;

    .line 115
    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/pengyouwan/framework/volley/b$a;->f:J

    .line 116
    iput-wide v3, v2, Lcom/pengyouwan/framework/volley/b$a;->e:J

    .line 117
    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/pengyouwan/framework/volley/b$a;->c:J

    .line 118
    iput-wide v9, v2, Lcom/pengyouwan/framework/volley/b$a;->d:J

    .line 119
    iput-object v7, v2, Lcom/pengyouwan/framework/volley/b$a;->g:Ljava/util/Map;

    .line 121
    .end local v2    # "entry":Lcom/pengyouwan/framework/volley/b$a;
    :goto_2
    return-object v2

    .line 68
    .restart local v8    # "i":I
    .restart local v26    # "tokens":[Ljava/lang/String;
    :cond_5
    aget-object v27, v26, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 69
    .local v25, "token":Ljava/lang/String;
    const-string v27, "no-cache"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string v27, "no-store"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 70
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 71
    :cond_7
    const-string v27, "max-age="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 73
    const/16 v27, 0x8

    :try_start_0
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v11

    .line 67
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 76
    :cond_9
    const-string v27, "stale-while-revalidate="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 78
    const/16 v27, 0x17

    :try_start_1
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v23

    goto :goto_3

    .line 81
    :cond_a
    const-string v27, "must-revalidate"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    const-string v27, "proxy-revalidate"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 82
    :cond_b
    const/4 v13, 0x1

    goto :goto_3

    .line 105
    .end local v8    # "i":I
    .end local v25    # "token":Ljava/lang/String;
    .end local v26    # "tokens":[Ljava/lang/String;
    :cond_c
    const-wide/16 v27, 0x3e8

    mul-long v27, v27, v23

    add-long v3, v21, v27

    goto/16 :goto_1

    .line 106
    :cond_d
    const-wide/16 v27, 0x0

    cmp-long v27, v16, v27

    if-lez v27, :cond_4

    cmp-long v27, v19, v16

    if-ltz v27, :cond_4

    .line 108
    sub-long v27, v19, v16

    add-long v21, v14, v27

    .line 109
    move-wide/from16 v3, v21

    goto/16 :goto_1

    .line 79
    .restart local v8    # "i":I
    .restart local v25    # "token":Ljava/lang/String;
    .restart local v26    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v27

    goto :goto_3

    .line 74
    :catch_1
    move-exception v27

    goto :goto_3
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 159
    .end local v1    # "i":I
    .end local v3    # "params":[Ljava/lang/String;
    .end local p1    # "defaultCharset":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 150
    .restart local v1    # "i":I
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local p1    # "defaultCharset":Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 152
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    const/4 v4, 0x1

    aget-object p1, v2, v4

    goto :goto_1

    .line 149
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
