.class Lcom/bluestareffects/app/weather/common/LightHaze$11;
.super Ljava/lang/Object;
.source "LightHaze.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 250
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/LightHaze$11;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze$11;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1100(Lcom/bluestareffects/app/weather/common/LightHaze;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 254
    .local v0, "value":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/LightHaze$11;->this$0:Lcom/bluestareffects/app/weather/common/LightHaze;

    invoke-static {v1}, Lcom/bluestareffects/app/weather/common/LightHaze;->access$1000(Lcom/bluestareffects/app/weather/common/LightHaze;)Lcom/bluestareffects/sdk/materials/module/Module;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 255
    return-void
.end method
