.class Lcom/GifEncoder/LooperShowView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/GifEncoder/LooperShowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/LooperShowView;


# direct methods
.method constructor <init>(Lcom/GifEncoder/LooperShowView;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {v0, p1}, Lcom/GifEncoder/LooperShowView;->b(Lcom/GifEncoder/LooperShowView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {p1}, Lcom/GifEncoder/LooperShowView;->a(Lcom/GifEncoder/LooperShowView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {v0, p1}, Lcom/GifEncoder/LooperShowView;->c(Lcom/GifEncoder/LooperShowView;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {v0}, Lcom/GifEncoder/LooperShowView;->a(Lcom/GifEncoder/LooperShowView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    new-instance v0, Lcom/GifEncoder/LooperShowView$b;

    iget-object v1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    const-string v2, "MyThread"

    invoke-direct {v0, v1, v2}, Lcom/GifEncoder/LooperShowView$b;-><init>(Lcom/GifEncoder/LooperShowView;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/GifEncoder/LooperShowView;->f:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    iput-object v0, p1, Lcom/GifEncoder/LooperShowView;->f:Landroid/os/HandlerThread;

    :cond_0
    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {p1}, Lcom/GifEncoder/LooperShowView;->d(Lcom/GifEncoder/LooperShowView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/GifEncoder/LooperShowView$a;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {v1, v0}, Lcom/GifEncoder/LooperShowView;->b(Lcom/GifEncoder/LooperShowView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
