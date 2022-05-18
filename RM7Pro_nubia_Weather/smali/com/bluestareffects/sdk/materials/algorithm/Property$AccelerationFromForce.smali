.class public Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccelerationFromForce"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimention"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;-><init>(I)V

    .line 169
    return-void
.end method


# virtual methods
.method public onResult([FF)V
    .locals 0
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    .line 175
    return-void
.end method
