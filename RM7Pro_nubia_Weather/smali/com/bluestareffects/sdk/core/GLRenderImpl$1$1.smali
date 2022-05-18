.class Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;
.super Ljava/lang/Object;
.source "GLRenderImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bluestareffects/sdk/core/GLRenderImpl$1;


# direct methods
.method constructor <init>(Lcom/bluestareffects/sdk/core/GLRenderImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;->this$1:Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;->this$1:Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    iget-object v2, v2, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v2}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$100(Lcom/bluestareffects/sdk/core/GLRenderImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;->this$1:Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    iget-object v1, v1, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v1}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$200(Lcom/bluestareffects/sdk/core/GLRenderImpl;)J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;->this$1:Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    iget-object v0, v0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$300(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 67
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1$1;->this$1:Lcom/bluestareffects/sdk/core/GLRenderImpl$1;

    iget-object v0, v0, Lcom/bluestareffects/sdk/core/GLRenderImpl$1;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$208(Lcom/bluestareffects/sdk/core/GLRenderImpl;)J

    .line 69
    :cond_0
    return-void
.end method
