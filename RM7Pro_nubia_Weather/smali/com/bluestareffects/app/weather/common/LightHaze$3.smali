.class Lcom/bluestareffects/app/weather/common/LightHaze$3;
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
    .line 128
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/LightHaze$3;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 143
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$3;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$000(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/LightHaze$3;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v0}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$200(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 138
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 132
    return-void
.end method
