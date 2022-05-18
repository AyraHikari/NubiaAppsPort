.class Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;
.super Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
.source "Twinkle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/common/Twinkle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwinkleParticle"
.end annotation


# instance fields
.field private mDestAlpha:F

.field private mLife:F

.field private final mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private final mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mTotalPassed:F


# direct methods
.method constructor <init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V
    .locals 2
    .param p1, "self"    # Lcom/bluestareffects/sdk/materials/module/Module;
    .param p2, "parent"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mTotalPassed:F

    .line 133
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 134
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 135
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 136
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 170
    return-void
.end method

.method public setDestAlpha(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mDestAlpha:F

    .line 140
    return-void
.end method

.method public setLife(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 143
    iput p1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mLife:F

    .line 144
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "timePassed"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 148
    invoke-super {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->update(F)V

    .line 153
    iget v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mTotalPassed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mTotalPassed:F

    .line 154
    iget v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mTotalPassed:F

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mLife:F

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mTotalPassed:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mLife:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mDestAlpha:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mLife:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mTotalPassed:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mLife:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->mDestAlpha:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    goto :goto_0
.end method
