.class public abstract Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LifeProperty"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimention"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public abstract isAlive()Z
.end method
