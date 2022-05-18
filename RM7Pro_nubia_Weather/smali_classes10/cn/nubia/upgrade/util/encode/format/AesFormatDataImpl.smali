.class public Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;
.super Ljava/lang/Object;
.source "AesFormatDataImpl.java"

# interfaces
.implements Lcn/nubia/upgrade/util/encode/format/FormatData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$Aes128;
    }
.end annotation


# instance fields
.field private final intervalTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x708

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "intervalTime"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;->intervalTime:I

    .line 30
    return-void
.end method

.method private static packageParms(Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 73
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v7, "parmsStr":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 75
    .local v6, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 76
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 77
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "key":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 79
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 81
    .local v8, "value":Ljava/lang/Object;
    :try_start_0
    instance-of v10, v8, Ljava/util/Collection;

    if-eqz v10, :cond_3

    .line 82
    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    move-object v9, v0

    .line 83
    .local v9, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v3, 0x1

    .line 84
    .local v3, "firstTag":Z
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 85
    .local v4, "item":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 86
    const/4 v3, 0x0

    .line 90
    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "="

    .line 91
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 92
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    .end local v3    # "firstTag":Z
    .end local v4    # "item":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 108
    const-string v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    .restart local v3    # "firstTag":Z
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    :try_start_1
    const-string v11, "&"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 96
    .end local v3    # "firstTag":Z
    .end local v4    # "item":Ljava/lang/Object;
    .end local v9    # "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_3
    if-nez v8, :cond_4

    .line 97
    const-string v8, ""

    .line 99
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "="

    .line 100
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 101
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 111
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method


# virtual methods
.method public decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "output"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 53
    invoke-static {p1, p2, p3}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$Aes128;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "decodeResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 58
    new-instance v1, Lcn/nubia/upgrade/util/encode/InterceptorClientException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;-><init>(I)V

    throw v1

    .line 68
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "format_data_timestamp"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "format_data_result"

    .line 35
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    new-instance v2, Lcn/nubia/upgrade/util/encode/InterceptorClientException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;-><init>(I)V

    throw v2

    .line 40
    :cond_1
    const-string v2, "format_data_timestamp"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 40
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;->packageParms(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "dataResult":Ljava/lang/String;
    const-string v2, "auth_token_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "authTokenId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 45
    const-string v2, "format_data_result"

    .line 46
    invoke-static {v1, p2, p3}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$Aes128;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "auth_token_id"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
