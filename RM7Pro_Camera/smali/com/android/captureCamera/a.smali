.class public Lcom/android/captureCamera/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/captureCamera/a;->a:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 13
    :try_start_0
    iget v0, p0, Lcom/android/captureCamera/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/captureCamera/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget v0, p0, Lcom/android/captureCamera/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/captureCamera/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/android/captureCamera/a;->a:I

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/captureCamera/a;->a:I

    return-void
.end method
