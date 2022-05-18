.class Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;
.super Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
.source "GroupStars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/common/GroupStars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StarPropertyParticle"
.end annotation


# instance fields
.field private mAlpha:F

.field private final mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private final mSelf:Lcom/bluestareffects/sdk/materials/module/Module;


# direct methods
.method constructor <init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V
    .locals 2
    .param p1, "self"    # Lcom/bluestareffects/sdk/materials/module/Module;
    .param p2, "parent"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 124
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 125
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 126
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 135
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mAlpha:F

    .line 130
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "timePassed"    # F

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->update(F)V

    .line 140
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    invoke-virtual {v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->getValue()[F

    move-result-object v0

    .line 141
    .local v0, "values":[F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->mAlpha:F

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 142
    return-void
.end method
