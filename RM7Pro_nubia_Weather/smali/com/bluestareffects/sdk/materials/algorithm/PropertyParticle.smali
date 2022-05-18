.class public Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
.super Ljava/lang/Object;
.source "PropertyParticle.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/algorithm/IParticle;


# instance fields
.field protected mLifeProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;

.field protected mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

.field protected mProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/Property;",
            ">;"
        }
    .end annotation
.end field

.field protected mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mProperties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mLifeProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mLifeProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;->isAlive()Z

    move-result v0

    goto :goto_0
.end method

.method public setLifeProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;)V
    .locals 0
    .param p1, "life"    # Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mLifeProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;

    .line 25
    return-void
.end method

.method public setOuterProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V
    .locals 0
    .param p1, "outer"    # Lcom/bluestareffects/sdk/materials/algorithm/Property;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    .line 21
    return-void
.end method

.method public setRootProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V
    .locals 0
    .param p1, "root"    # Lcom/bluestareffects/sdk/materials/algorithm/Property;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    .line 17
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "timePassed"    # F

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->onTime(F)V

    .line 29
    return-void
.end method
