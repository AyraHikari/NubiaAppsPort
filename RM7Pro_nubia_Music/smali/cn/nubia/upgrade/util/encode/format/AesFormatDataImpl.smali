.class public Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;
.super Ljava/lang/Object;
.source "AesFormatDataImpl.java"

# interfaces
.implements Lcn/nubia/upgrade/util/encode/format/FormatData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;
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

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;->intervalTime:I

    .line 30
    return-void
.end method

.method private static packageParms(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
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
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 73
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 81
    :try_start_0
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 82
    check-cast v0, Ljava/util/Collection;

    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v0, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 85
    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x0

    .line 90
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 107
    :cond_1
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 96
    :cond_3
    if-nez v0, :cond_4

    .line 97
    const-string v0, ""

    .line 99
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 53
    invoke-static {p1, p2, p3}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 58
    new-instance v0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;-><init>(I)V

    throw v0

    .line 68
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    const-string v0, "format_data_timestamp"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "format_data_result"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;-><init>(I)V

    throw v0

    .line 40
    :cond_1
    const-string v0, "format_data_timestamp"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 40
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;->packageParms(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v0, "auth_token_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 45
    const-string v2, "format_data_result"

    .line 46
    invoke-static {v1, p2, p3}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "auth_token_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
