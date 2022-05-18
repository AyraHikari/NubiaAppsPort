.class public Lcom/hpplay/sdk/source/browse/handler/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AliveTask"


# instance fields
.field private b:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/hpplay/sdk/source/browse/c/a;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->c:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->e:Z

    .line 32
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/browse/handler/a;->setName(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 34
    return-void
.end method

.method private static a(ILjava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    const-string v0, "AliveTask"

    const-string v1, "filterBrowserInfosByConnectType is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 136
    :cond_1
    const-string v0, "AliveTask"

    const-string v1, "filterBrowserInfosByConnectType"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 139
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->g()I

    move-result v3

    if-ne v3, p0, :cond_2

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/browse/handler/a;->a(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v2, "doCheck tcpCheck:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 103
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->d()I

    move-result v5

    .line 104
    invoke-static {v3, v4, v5}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->tcpCheckTvState(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 106
    const-string v4, "name:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alive state:"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 110
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 112
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v2, "AliveTask"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :cond_1
    const-string v0, "AliveTask"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/browse/handler/a;->a(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGetTVListStatus:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->httpPostCheckTvState(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "AliveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCheck "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->e:Z

    .line 148
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    const-string v0, "AliveTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBrowserInfo isContainsNewInfo size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 45
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->isContainsNewInfo(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "AliveTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBrowserInfo isContainsNewInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->c:Z

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    const-string v0, "AliveTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBrowserInfo isContainsNewInfo mBrowserInfos.put( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/c/a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/a;->d:Lcom/hpplay/sdk/source/browse/c/a;

    .line 38
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "AliveTask"

    const-string v1, "clearInfo"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->e:Z

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 156
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v0, "AliveTask"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/handler/a;->interrupt()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->e:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->c:Z

    .line 163
    iput-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->d:Lcom/hpplay/sdk/source/browse/c/a;

    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 166
    iput-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 168
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 65
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/browse/handler/a;->c:Z

    .line 67
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->c:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/a;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "AliveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.Name = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " continue"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "AliveTask"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_1
    return-void

    .line 78
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/hpplay/sdk/source/browse/handler/a;->a(Ljava/util/Collection;)V

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    .line 80
    const-string v6, "AliveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info.Name = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->d:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->e:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->d:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->e:Z

    if-nez v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/hpplay/sdk/source/browse/handler/a;->d:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-interface {v2, v1}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAlive(Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_1

    .line 80
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
