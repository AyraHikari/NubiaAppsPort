.class public Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VelocityFromAcceleration"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimention"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;-><init>(I)V

    .line 154
    return-void
.end method


# virtual methods
.method public onResult([FF)V
    .locals 4
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;->mValue:[F

    aget v2, v1, v0

    aget v3, p1, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->onResult([FF)V

    .line 163
    return-void
.end method
