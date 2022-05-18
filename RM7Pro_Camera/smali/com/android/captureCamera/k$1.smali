.class Lcom/android/captureCamera/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/k;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/k;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/captureCamera/k$1;->a:Lcom/android/captureCamera/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    const-string v0, "ReprocessWatermarkProcessor"

    const-string v1, "[mYuvImageAvailableListener] onImageAvailable"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/android/captureCamera/k$1;->a:Lcom/android/captureCamera/k;

    invoke-static {v2}, Lcom/android/captureCamera/k;->a(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/android/captureCamera/k$1;->a:Lcom/android/captureCamera/k;

    invoke-static {v3}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/captureCamera/j;

    .line 48
    iget-wide v5, v4, Lcom/android/captureCamera/j;->b:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_0

    .line 49
    iput-object p1, v4, Lcom/android/captureCamera/j;->c:Landroid/media/Image;

    .line 50
    iget-object p1, v4, Lcom/android/captureCamera/j;->a:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/android/captureCamera/k$1;->a:Lcom/android/captureCamera/k;

    invoke-static {p1, v4}, Lcom/android/captureCamera/k;->a(Lcom/android/captureCamera/k;Lcom/android/captureCamera/j;)V

    .line 52
    :cond_1
    monitor-exit v2

    return-void

    .line 55
    :cond_2
    new-instance v3, Lcom/android/captureCamera/j;

    invoke-direct {v3}, Lcom/android/captureCamera/j;-><init>()V

    .line 56
    iput-wide v0, v3, Lcom/android/captureCamera/j;->b:J

    .line 57
    iput-object p1, v3, Lcom/android/captureCamera/j;->c:Landroid/media/Image;

    .line 58
    iget-object p1, p0, Lcom/android/captureCamera/k$1;->a:Lcom/android/captureCamera/k;

    invoke-static {p1}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null Image"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
