.class public Lcom/huanju/ssp/base/utils/AesFormatDataImpl;
.super Ljava/lang/Object;
.source "AesFormatDataImpl.java"

# interfaces
.implements Lcom/huanju/ssp/base/utils/FormatData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;
    }
.end annotation


# instance fields
.field private final intervalTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x708

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "intervalTime"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;->intervalTime:I

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
    .line 62
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 63
    .local v6, "iter":Ljava/util/Iterator;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v8, "parmsStr":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 65
    .local v7, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 67
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 68
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "key":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 69
    .restart local v7    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 73
    .local v9, "value":Ljava/lang/Object;
    :try_start_0
    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_3

    .line 74
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    move-object v10, v0

    .line 75
    .local v10, "valueCollection":Ljava/util/Collection;
    const/4 v3, 0x1

    .line 76
    .local v3, "firstTag":Z
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 78
    .local v5, "item":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 79
    const/4 v3, 0x0

    .line 83
    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 93
    .end local v3    # "firstTag":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "valueCollection":Ljava/util/Collection;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 96
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 97
    const-string v11, "&"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 81
    .restart local v3    # "firstTag":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "item":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v10    # "valueCollection":Ljava/util/Collection;
    :cond_2
    :try_start_1
    const-string v11, "&"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 87
    .end local v3    # "firstTag":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Ljava/lang/Object;
    .end local v10    # "valueCollection":Ljava/util/Collection;
    :cond_3
    if-nez v9, :cond_4

    .line 88
    const-string v9, ""

    .line 90
    .end local v9    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 100
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method


# virtual methods
.method public decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "output"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huanju/ssp/base/utils/InterceptorClientException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 50
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "decodeResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 55
    new-instance v1, Lcom/huanju/ssp/base/utils/InterceptorClientException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/huanju/ssp/base/utils/InterceptorClientException;-><init>(I)V

    throw v1

    .line 58
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
            Lcom/huanju/ssp/base/utils/InterceptorClientException;
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "format_data_timestamp"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "format_data_result"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    new-instance v2, Lcom/huanju/ssp/base/utils/InterceptorClientException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/huanju/ssp/base/utils/InterceptorClientException;-><init>(I)V

    throw v2

    .line 37
    :cond_1
    const-string v2, "format_data_timestamp"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;->packageParms(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "dataResult":Ljava/lang/String;
    const-string v2, "auth_token_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "authTokenId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 43
    const-string v2, "format_data_result"

    invoke-static {v1, p2, p3}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "auth_token_id"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
