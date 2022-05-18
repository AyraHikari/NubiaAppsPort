.class Lcom/bluestareffects/sdk/core/GLRenderImpl$1;
.super Ljava/lang/Object;
.source "GLRenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/sdk/core/GLRenderImpl;->startFrameAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;


# direct methods
.method constructor <init>(Lcom/bluestareffects/sdk/core/GLRenderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/sdk/core/GLRenderImpl;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$002(Lcom/bluestareffects/sdk/core/GLRenderImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 59
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 62
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;-><init>(Lcom/bluestareffects/sdk/core/GLRenderImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$102(Lcom/bluestareffects/sdk/core/GLRenderImpl;J)J

    .line 73
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$202(Lcom/bluestareffects/sdk/core/GLRenderImpl;J)J

    .line 74
    return-void

    .line 58
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
