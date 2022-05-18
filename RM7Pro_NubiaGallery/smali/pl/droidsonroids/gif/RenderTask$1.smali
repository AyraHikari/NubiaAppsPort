.class Lpl/droidsonroids/gif/RenderTask$1;
.super Ljava/lang/Object;
.source "RenderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/RenderTask;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/RenderTask;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lpl/droidsonroids/gif/RenderTask$1;->this$0:Lpl/droidsonroids/gif/RenderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 16
    iget-object v0, p0, Lpl/droidsonroids/gif/RenderTask$1;->this$0:Lpl/droidsonroids/gif/RenderTask;

    iget-object v0, v0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/AnimationListener;

    .line 17
    invoke-interface {v1}, Lpl/droidsonroids/gif/AnimationListener;->onAnimationCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method
