.class public abstract Lcom/hpplay/sdk/source/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/service/b$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "ILelinkService"


# instance fields
.field public a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Lcom/hpplay/sdk/source/protocol/b;

.field e:Lcom/hpplay/sdk/source/api/IConnectListener;

.field f:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field g:I

.field h:I

.field i:I

.field public j:Ljava/lang/String;

.field public k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field private m:J

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/service/b;->g:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/hpplay/sdk/source/service/b;->h:I

    return-void
.end method

.method private a(ILjava/lang/String;I)V
    .locals 11

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/hpplay/sdk/source/service/b;->m:J

    sub-long/2addr v4, v6

    .line 167
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v3

    .line 168
    if-ne v3, v2, :cond_1

    .line 182
    :goto_0
    const-string v0, "ILelinkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect complete status "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " protocl "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " connect time -- > "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v6, p0, Lcom/hpplay/sdk/source/service/b;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v8

    move v3, p3

    move v9, p1

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onConnect(IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    :cond_0
    return-void

    .line 172
    :cond_1
    if-ne v3, v1, :cond_2

    move v2, v1

    .line 175
    goto :goto_0

    :cond_2
    move v1, v0

    move v2, v0

    .line 179
    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
.end method

.method protected a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/b;->c:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->j()V

    .line 108
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/b;->j:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(ILjava/lang/String;I)V

    .line 112
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    invoke-static {}, Lcom/hpplay/sdk/source/browse/impl/a;->a()Lcom/hpplay/sdk/source/browse/impl/a;

    move-result-object v0

    new-array v1, v2, [Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/a;->a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 118
    :goto_1
    invoke-static {}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b()Lcom/hpplay/sdk/source/service/LelinkServicePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->a(Lcom/hpplay/sdk/source/service/b;)V

    .line 119
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/b;->a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/hpplay/sdk/source/api/IConnectListener;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "ILelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "ILelinkService"

    const-string v1, "connectSuccess not upload to clod,becase uid is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/b;->b:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/b;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 87
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/b;->f:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 91
    return-void
.end method

.method a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 54
    return-void
.end method

.method public abstract a(Lcom/hpplay/sdk/source/service/b$a;)V
.end method

.method public abstract b()Lcom/hpplay/sdk/source/player/a;
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 190
    :try_start_0
    const-string v0, "DEVICE_NAME_SHOW"

    .line 191
    const-string v1, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    invoke-virtual {v2, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, ""

    const-string v5, "CALL_7"

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 195
    const-string v2, "ILelinkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Nubia devices name  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "ILelinkService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, ""

    goto :goto_0
.end method

.method public abstract c()Z
.end method

.method public d()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/b;->c:Z

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/service/b;->m:J

    .line 70
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/b;->n:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public abstract e()I
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/b;->c:Z

    .line 206
    invoke-static {}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b()Lcom/hpplay/sdk/source/service/LelinkServicePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->b(Lcom/hpplay/sdk/source/service/b;)Z

    .line 207
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 5

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setName(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setIp(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setPort(I)V

    .line 137
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->isConnect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setUid(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/hpplay/sdk/source/service/b;->k:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->f()I

    move-result v4

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/b;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v3, v4, v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "ILelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/service/b;->a(ILjava/lang/String;I)V

    .line 161
    return-void
.end method
