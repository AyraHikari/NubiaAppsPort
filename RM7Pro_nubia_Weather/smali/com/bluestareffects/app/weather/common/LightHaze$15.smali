.class Lcom/bluestareffects/app/weather/common/LightHaze$15;
.super Ljava/lang/Object;
.source "LightHaze.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 300
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/LightHaze$15;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 315
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$15;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 309
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$15;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1400(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 310
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 320
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 304
    return-void
.end method
