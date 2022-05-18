.class public Lcom/hpplay/sdk/source/browse/handler/d;
.super Lcom/hpplay/sdk/source/protocol/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "LelinkBrowseRunnable"


# instance fields
.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/browse/handler/d;->o:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/d;->n:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/d;->n:Z

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v1, 0x3e8

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/d;->n:Z

    .line 30
    const/16 v0, 0xa

    .line 31
    monitor-enter p0

    .line 32
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/browse/handler/d;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 34
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/handler/d;->i()V

    .line 35
    iget v2, p0, Lcom/hpplay/sdk/source/browse/handler/d;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x3c

    if-le v2, v3, :cond_2

    .line 54
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/handler/d;->j()V

    .line 55
    const-string v0, "LelinkBrowseRunnable"

    const-string v1, "exit the search thread"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    return-void

    .line 38
    :cond_2
    :try_start_3
    const-string v2, "LelinkBrowseRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send data ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " waite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hpplay/sdk/source/browse/handler/d;->o:I

    mul-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget v2, p0, Lcom/hpplay/sdk/source/browse/handler/d;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/browse/handler/d;->o:I

    .line 41
    iget v2, p0, Lcom/hpplay/sdk/source/browse/handler/d;->o:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    if-ge v0, v1, :cond_0

    .line 43
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v2

    .line 44
    if-le v0, v1, :cond_0

    move v0, v1

    .line 45
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_4
    const-string v1, "LelinkBrowseRunnable"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
