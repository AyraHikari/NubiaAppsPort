.class public Lcom/hpplay/sdk/source/protocol/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ProtocolQueue"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/protocol/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/k;->c:I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/hpplay/sdk/source/protocol/i;
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 41
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/hpplay/sdk/source/protocol/k;->c:I

    if-lt v0, v1, :cond_1

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/protocol/i;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_1
    monitor-exit p0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_3
    const-string v1, "ProtocolQueue"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/hpplay/sdk/source/protocol/i;)V
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/hpplay/sdk/source/protocol/k;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    :try_start_3
    const-string v1, "ProtocolQueue"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
