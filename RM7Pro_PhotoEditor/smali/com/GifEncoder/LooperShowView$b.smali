.class Lcom/GifEncoder/LooperShowView$b;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/GifEncoder/LooperShowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/LooperShowView;


# direct methods
.method public constructor <init>(Lcom/GifEncoder/LooperShowView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    new-instance v1, Lcom/GifEncoder/LooperShowView$b$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/GifEncoder/LooperShowView$b$a;-><init>(Lcom/GifEncoder/LooperShowView$b;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    iget-object v1, v0, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    invoke-static {v0}, Lcom/GifEncoder/LooperShowView;->e(Lcom/GifEncoder/LooperShowView;)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView$b;->a:Lcom/GifEncoder/LooperShowView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    return-void
.end method
