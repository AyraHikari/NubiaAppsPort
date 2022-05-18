.class Lcom/hpplay/sdk/source/service/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 5

    .prologue
    const v4, 0x33c2b

    const/4 v3, 0x0

    .line 70
    const-string v0, "DlnaLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "DlnaLinkService"

    const-string v1, "connect result over --> "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/service/a;->c:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/a;->a(Lcom/hpplay/sdk/source/service/a;Z)Z

    .line 78
    new-instance v0, Lcom/hpplay/sdk/source/service/a$b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/service/a$b;-><init>(Lcom/hpplay/sdk/source/service/a;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/service/a$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/a;->a(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/a;->k()V

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/a;->b(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/service/b$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/a;->b(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/service/b$a;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/hpplay/sdk/source/service/b$a;->onConnectFailed(I)V

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 86
    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c2a

    invoke-interface {v0, v1, v2, v4}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/service/a;->a(Lcom/hpplay/sdk/source/service/a;Z)Z

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$1;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/a;->g()V

    goto :goto_0
.end method
