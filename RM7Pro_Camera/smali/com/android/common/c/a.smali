.class public Lcom/android/common/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/common/c/e;

.field private b:Z

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/common/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:J

.field private g:Z

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/android/common/c/e;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/common/c/a;->b:Z

    .line 27
    iput v0, p0, Lcom/android/common/c/a;->c:I

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lcom/android/common/c/a;->e:J

    .line 32
    iput-wide v1, p0, Lcom/android/common/c/a;->f:J

    .line 33
    iput-boolean v0, p0, Lcom/android/common/c/a;->g:Z

    .line 34
    iput-wide v1, p0, Lcom/android/common/c/a;->h:J

    const-string v0, "PreviewFrame"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/c/a;->i:Z

    .line 42
    iput-object p1, p0, Lcom/android/common/c/a;->a:Lcom/android/common/c/e;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/common/c/a;->f:J

    return-wide v0
.end method

.method public declared-synchronized a(Lcom/android/common/c/a$a;)V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 2

    .line 57
    iput-boolean p1, p0, Lcom/android/common/c/a;->g:Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/common/c/a;->e:J

    .line 60
    iput-wide v0, p0, Lcom/android/common/c/a;->f:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/common/c/a;->b:Z

    .line 70
    iput v0, p0, Lcom/android/common/c/a;->c:I

    return-void
.end method

.method public declared-synchronized b(Lcom/android/common/c/a$a;)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/common/c/a;->b:Z

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .line 79
    iget-boolean p1, p0, Lcom/android/common/c/a;->b:Z

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/common/c/a;->a:Lcom/android/common/c/e;

    invoke-virtual {p1}, Lcom/android/common/c/e;->i()V

    :cond_0
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/common/c/a;->b:Z

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/android/common/c/a$a;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/common/c/a$a;

    .line 87
    iget-object v1, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/android/common/c/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 90
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_2

    aget-object v2, v0, p1

    .line 92
    invoke-interface {v2}, Lcom/android/common/c/a$a;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/common/c/a;->a:Lcom/android/common/c/e;

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    .line 97
    iget-boolean p1, p0, Lcom/android/common/c/a;->g:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/common/c/a;->i:Z

    if-eqz p1, :cond_5

    .line 98
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    iget-wide v2, p0, Lcom/android/common/c/a;->e:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    sub-long v2, v0, v2

    .line 100
    iget-wide v4, p0, Lcom/android/common/c/a;->f:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/common/c/a;->f:J

    .line 101
    iget-wide v2, p0, Lcom/android/common/c/a;->h:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/common/c/a;->i:Z

    if-eqz p1, :cond_4

    const-string p1, "CameraOnFrameAvailableListener"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrameInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/common/c/a;->f:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, FrameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/common/c/a;->f:J

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-wide v0, p0, Lcom/android/common/c/a;->h:J

    .line 106
    :cond_4
    iput-wide v0, p0, Lcom/android/common/c/a;->e:J

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
