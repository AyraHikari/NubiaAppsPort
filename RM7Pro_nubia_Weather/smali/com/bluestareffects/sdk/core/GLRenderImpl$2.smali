.class Lcom/bluestareffects/sdk/core/GLRenderImpl$2;
.super Ljava/lang/Object;
.source "GLRenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/sdk/core/GLRenderImpl;->stopFrameAnimator()V
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
    .line 79
    iput-object p1, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$402(Lcom/bluestareffects/sdk/core/GLRenderImpl;Z)Z

    .line 83
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    invoke-static {v0}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$000(Lcom/bluestareffects/sdk/core/GLRenderImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/bluestareffects/sdk/core/GLRenderImpl$2;->this$0:Lcom/bluestareffects/sdk/core/GLRenderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/core/GLRenderImpl;->access$002(Lcom/bluestareffects/sdk/core/GLRenderImpl;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 87
    :cond_0
    return-void
.end method
