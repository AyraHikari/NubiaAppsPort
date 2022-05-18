.class Lcom/android/captureCamera/k$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


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

    .line 213
    iput-object p1, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 237
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 238
    iget-object v0, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {v0}, Lcom/android/captureCamera/k;->a(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {v1}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/captureCamera/j;

    .line 240
    iget-wide v3, v2, Lcom/android/captureCamera/j;->b:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 241
    iput-object p3, v2, Lcom/android/captureCamera/j;->a:Landroid/hardware/camera2/TotalCaptureResult;

    .line 242
    iget-object p1, v2, Lcom/android/captureCamera/j;->c:Landroid/media/Image;

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {p1, v2}, Lcom/android/captureCamera/k;->a(Lcom/android/captureCamera/k;Lcom/android/captureCamera/j;)V

    .line 248
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 259
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Capture Failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 216
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 217
    iget-object p1, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {p1}, Lcom/android/captureCamera/k;->a(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object p1

    monitor-enter p1

    .line 218
    :try_start_0
    iget-object p2, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {p2}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/captureCamera/j;

    .line 219
    iget-wide p5, p5, Lcom/android/captureCamera/j;->b:J

    cmp-long p5, p5, p3

    if-nez p5, :cond_0

    .line 220
    monitor-exit p1

    return-void

    .line 224
    :cond_1
    new-instance p2, Lcom/android/captureCamera/j;

    invoke-direct {p2}, Lcom/android/captureCamera/j;-><init>()V

    .line 225
    iput-wide p3, p2, Lcom/android/captureCamera/j;->b:J

    .line 227
    iget-object p3, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {p3}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 228
    iget-object p2, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {p2}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/4 p3, 0x3

    if-le p2, p3, :cond_2

    .line 229
    iget-object p2, p0, Lcom/android/captureCamera/k$2;->a:Lcom/android/captureCamera/k;

    invoke-static {p2}, Lcom/android/captureCamera/k;->b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/captureCamera/j;

    invoke-virtual {p2}, Lcom/android/captureCamera/j;->a()V

    .line 231
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
