.class public Lcom/android/gallery3d/filtershow/pipeline/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private volatile b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private volatile c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->d:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->O(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->Y(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->c:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/p;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
