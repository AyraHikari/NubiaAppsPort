.class public abstract Lcom/bluestareffects/sdk/materials/algorithm/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/sdk/materials/algorithm/Property$Force;,
        Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;,
        Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;,
        Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;,
        Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;,
        Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;,
        Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;
    }
.end annotation


# instance fields
.field protected final mDimension:I

.field private mResultListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUniqueListener:Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

.field protected mValue:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "dimension"    # I

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mUniqueListener:Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    .line 22
    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mResultListeners:Ljava/util/ArrayList;

    .line 17
    iput p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mDimension:I

    .line 18
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mValue:[F

    .line 19
    return-void
.end method

.method private causeChange([FF)V
    .locals 3
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    .line 54
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mUniqueListener:Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mUniqueListener:Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    invoke-interface {v1, p1, p2}, Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;->onResult([FF)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mResultListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    .line 58
    .local v0, "listener":Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;
    invoke-interface {v0, p1, p2}, Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;->onResult([FF)V

    goto :goto_0

    .line 60
    .end local v0    # "listener":Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mResultListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mResultListeners:Ljava/util/ArrayList;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public getValue()[F
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mValue:[F

    return-object v0
.end method

.method public onResult([FF)V
    .locals 1
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mValue:[F

    invoke-direct {p0, v0, p2}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->causeChange([FF)V

    .line 46
    return-void
.end method

.method public onTime(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mValue:[F

    invoke-direct {p0, v0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->causeChange([FF)V

    .line 51
    return-void
.end method

.method public setResultListener(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mUniqueListener:Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;

    .line 25
    return-void
.end method

.method public setValue([F)V
    .locals 0
    .param p1, "value"    # [F

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property;->mValue:[F

    .line 37
    return-void
.end method
