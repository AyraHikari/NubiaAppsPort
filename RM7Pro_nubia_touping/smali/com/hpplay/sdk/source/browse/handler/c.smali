.class public Lcom/hpplay/sdk/source/browse/handler/c;
.super Lcom/hpplay/sdk/source/protocol/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "LelinkBrowseHandler"

.field private static final n:Ljava/lang/String; = "LBTP"


# instance fields
.field private o:Z

.field private p:Lcom/hpplay/sdk/source/browse/handler/d;

.field private q:Ljava/lang/Thread;

.field private r:Lcom/hpplay/sdk/source/browse/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 96
    .line 97
    const-string v1, "vv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v3, "LelinkBrowseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveServiceInfo vv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFilterNewLelinkV1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 100
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 106
    :goto_0
    new-instance v3, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {v3, v2, v2}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 107
    const-string v0, "devicename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 108
    const-string v0, "deviceip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 110
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 111
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v0, "lelinkport"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v0, "devicename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  -- "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v0, "LelinkBrowseHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mdns device name ------------> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "devicename"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    if-nez v1, :cond_3

    const-string v6, "vv"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 133
    const-string v0, "LelinkBrowseHandler"

    const-string v6, "filter new lelink field vv"

    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v1, v2

    .line 103
    goto/16 :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v2, "LelinkBrowseHandler"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 141
    return-object v3

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->q:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/handler/d;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->p:Lcom/hpplay/sdk/source/browse/handler/d;

    .line 45
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/c;->p:Lcom/hpplay/sdk/source/browse/handler/d;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->q:Ljava/lang/Thread;

    .line 46
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->o:Z

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->q:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->p:Lcom/hpplay/sdk/source/browse/handler/d;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->p:Lcom/hpplay/sdk/source/browse/handler/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/d;->b()V

    .line 57
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->r:Lcom/hpplay/sdk/source/browse/c/a;

    .line 58
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->o:Z

    .line 35
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->k:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->k:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 38
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/c/a;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/c;->r:Lcom/hpplay/sdk/source/browse/c/a;

    .line 31
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/handler/c;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->o:Z

    .line 63
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->o:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/c;->b()V

    .line 66
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->o:Z

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->k:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/c;->l:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->l:Ljava/net/DatagramPacket;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->l:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 73
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/c;->l:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    const-string v0, "LBTP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->r:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/c;->r:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/browse/handler/c;->a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_2
    const-string v1, "LelinkBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-string v1, "LelinkBrowseHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/c;->c()V

    .line 93
    return-void
.end method
