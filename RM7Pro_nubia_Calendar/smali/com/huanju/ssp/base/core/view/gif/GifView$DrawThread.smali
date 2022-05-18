.class Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;
.super Ljava/lang/Thread;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/view/gif/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/base/core/view/gif/GifView;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/core/view/gif/GifView;Lcom/huanju/ssp/base/core/view/gif/GifView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/core/view/gif/GifView;
    .param p2, "x1"    # Lcom/huanju/ssp/base/core/view/gif/GifView$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;-><init>(Lcom/huanju/ssp/base/core/view/gif/GifView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 392
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->access$100(Lcom/huanju/ssp/base/core/view/gif/GifView;)Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->access$200(Lcom/huanju/ssp/base/core/view/gif/GifView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->access$300(Lcom/huanju/ssp/base/core/view/gif/GifView;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 398
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->access$100(Lcom/huanju/ssp/base/core/view/gif/GifView;)Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->next()Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    move-result-object v1

    .line 399
    .local v1, "frame":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v5, v1, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/core/view/gif/GifView;->access$402(Lcom/huanju/ssp/base/core/view/gif/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 400
    iget v4, v1, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->delay:I

    int-to-long v2, v4

    .line 401
    .local v2, "sp":J
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->this$0:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->access$500(Lcom/huanju/ssp/base/core/view/gif/GifView;)V

    .line 402
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 404
    .end local v1    # "frame":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    .end local v2    # "sp":J
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
