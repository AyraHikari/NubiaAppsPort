.class Lcom/hpplay/sdk/source/process/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IBrowseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/e;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowse(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 72
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/e;->a(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/process/e$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/e;->b(Lcom/hpplay/sdk/source/process/e;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 75
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v3}, Lcom/hpplay/sdk/source/process/e;->c(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v3}, Lcom/hpplay/sdk/source/process/e;->c(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    const-string v1, "PushFailedRetryManager"

    const-string v3, "replay get device callback to player "

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/e;->a(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/process/e$b;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-interface {v3, v1, v0}, Lcom/hpplay/sdk/source/process/e$b;->onBrowseInfoCallback(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/b/b;)V

    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/e;->a(Lcom/hpplay/sdk/source/process/e;Lcom/hpplay/sdk/source/process/e$b;)Lcom/hpplay/sdk/source/process/e$b;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/e;->d(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/process/e$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 84
    const-string v1, "PushFailedRetryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get retry devs  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v3}, Lcom/hpplay/sdk/source/process/e;->e(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/e;->e(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    :cond_2
    const-string v0, "PushFailedRetryManager"

    const-string v1, "reconnect get device callback to controller"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/e;->d(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/process/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/e;->e(Lcom/hpplay/sdk/source/process/e;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/process/e$a;->onLelinkServiceInfoCallback(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/e$1;->a:Lcom/hpplay/sdk/source/process/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/e;->a(Lcom/hpplay/sdk/source/process/e;Lcom/hpplay/sdk/source/process/e$a;)Lcom/hpplay/sdk/source/process/e$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "PushFailedRetryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_4
    return-void
.end method
