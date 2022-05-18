.class Lcom/GifEncoder/LooperShowView$b$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/LooperShowView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/LooperShowView$b;


# direct methods
.method constructor <init>(Lcom/GifEncoder/LooperShowView$b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView$b$a;->a:Lcom/GifEncoder/LooperShowView$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$b$a;->a:Lcom/GifEncoder/LooperShowView$b;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    invoke-static {p1}, Lcom/GifEncoder/LooperShowView;->a(Lcom/GifEncoder/LooperShowView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$b$a;->a:Lcom/GifEncoder/LooperShowView$b;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    iget-object v0, p1, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcom/GifEncoder/LooperShowView;->e(Lcom/GifEncoder/LooperShowView;)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$b$a;->a:Lcom/GifEncoder/LooperShowView$b;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    invoke-virtual {p1}, Lcom/GifEncoder/LooperShowView;->i()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/GifEncoder/LooperShowView$b$a;->a:Lcom/GifEncoder/LooperShowView$b;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    iget-object p1, p1, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method
