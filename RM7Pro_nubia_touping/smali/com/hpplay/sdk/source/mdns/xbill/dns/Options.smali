.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static table:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->refresh()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static check(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static intValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    if-lez v0, :cond_0

    .line 89
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 89
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static refresh()V
    .locals 4

    .prologue
    .line 19
    const-string v0, "dnsjava.options"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 25
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 26
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 27
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public static set(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    .line 47
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    .line 55
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static unset(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-void
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->table:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
