.class Lpl/droidsonroids/gif/GifTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# instance fields
.field final isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

.field private mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

.field private mIOException:Ljava/io/IOException;

.field mSavedState:[J

.field final synthetic this$0:Lpl/droidsonroids/gif/GifTextureView;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    const-string p1, "GifRenderThread"

    .line 169
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance p1, Lpl/droidsonroids/gif/ConditionVariable;

    invoke-direct {p1}, Lpl/droidsonroids/gif/ConditionVariable;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    .line 164
    sget-object p1, Lpl/droidsonroids/gif/GifInfoHandle;->NULL_INFO:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    return-void
.end method

.method static synthetic access$200(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 0

    .line 161
    iget-object p0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object p0
.end method

.method static synthetic access$700(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Ljava/io/IOException;
    .locals 0

    .line 161
    iget-object p0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    return-object p0
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 237
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/ConditionVariable;->close()V

    .line 238
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->access$501(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 239
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface()V

    .line 240
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->access$600(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->interrupt()V

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->interrupted()Z

    .line 246
    :cond_0
    :try_start_0
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->access$600(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    move-result-object v1

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 216
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    iget-object p2, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifTextureView;->access$300(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 217
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/ConditionVariable;->open()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 227
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/ConditionVariable;->close()V

    .line 228
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    .line 175
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->access$000(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/InputSource;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/InputSource;->open()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-static {v0, p0}, Lpl/droidsonroids/gif/GifTextureView;->access$101(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 182
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isAvailable()Z

    move-result v0

    .line 183
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/ConditionVariable;->set(Z)V

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    new-instance v1, Lpl/droidsonroids/gif/GifTextureView$RenderThread$1;

    invoke-direct {v1, p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread$1;-><init>(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)V

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->access$400(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    :try_start_1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 206
    :try_start_2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mSavedState:[J

    iget-object v3, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->this$0:Lpl/droidsonroids/gif/GifTextureView;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->bindSurface(Landroid/view/Surface;[JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 209
    throw v0

    .line 211
    :catch_0
    :cond_2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->recycle()V

    return-void

    :catch_1
    move-exception v0

    .line 177
    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    return-void
.end method
