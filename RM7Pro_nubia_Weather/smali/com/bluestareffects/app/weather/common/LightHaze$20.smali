.class Lcom/bluestareffects/app/weather/common/LightHaze$20;
.super Ljava/lang/Object;
.source "LightHaze.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluestareffects/app/weather/common/LightHaze;->initModule(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/shader/BaseShader;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/common/LightHaze;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/common/LightHaze;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bluestareffects/app/weather/common/LightHaze;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$000(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 391
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$000(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 392
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 393
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 394
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$300(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 395
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$300(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 396
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$500(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 397
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$500(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 398
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$600(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 399
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$600(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 400
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$800(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 401
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$800(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 402
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$900(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 403
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$900(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 404
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1100(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 405
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1100(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 406
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 407
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 408
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1400(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 409
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1400(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 410
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1500(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 411
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1500(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 412
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1700(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 413
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$20;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1700(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 415
    return-void
.end method
