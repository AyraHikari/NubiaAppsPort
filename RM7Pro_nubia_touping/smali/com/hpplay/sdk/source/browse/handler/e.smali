.class public Lcom/hpplay/sdk/source/browse/handler/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "OnlineCheckThread"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    .line 27
    const-string v0, "OnlineCheckThread"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/browse/handler/e;->setName(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/handler/e;->b:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/e;->d:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->e:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->d:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    .line 62
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/handler/e;->interrupt()V

    .line 63
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->e:Z

    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    const-string v0, "OnlineCheckThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init info size  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 45
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/a;->a(Ljava/util/Collection;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->d:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "OnlineCheckThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " call back size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->d:Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    const v1, 0x10003

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/e;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;->onResult(ILjava/lang/Object;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/e;->e:Z

    .line 58
    :cond_2
    return-void
.end method
