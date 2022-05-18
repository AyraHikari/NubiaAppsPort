.class Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    .locals 3

    .prologue
    .line 221
    const-string v0, "LelinkCastPlayer"

    const-string v1, "-----> connect imm dev"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->c(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->c(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/IConnectListener;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->d(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/LelinkServicePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->d(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/LelinkServicePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->d(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/LelinkServicePool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/LelinkServicePool;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/service/b;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;Lcom/hpplay/sdk/source/service/b;)Lcom/hpplay/sdk/source/service/b;

    .line 227
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->b()Lcom/hpplay/sdk/source/player/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->a(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;

    .line 228
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectType-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->b(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/player/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->f(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->setDataSource(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->start()V

    .line 234
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    .locals 7

    .prologue
    const v6, 0x3345d

    .line 238
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->c(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->c(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect failed --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/service/b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->e(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/service/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/b;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 243
    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onPushSend(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->g(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$2;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/LelinkCastPlayer;->g(Lcom/hpplay/sdk/source/player/LelinkCastPlayer;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    const v1, 0x3345a

    invoke-interface {v0, v1, v6}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 251
    :cond_2
    return-void
.end method
