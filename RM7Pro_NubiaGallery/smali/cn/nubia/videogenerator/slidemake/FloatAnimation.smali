.class public Lcn/nubia/videogenerator/slidemake/FloatAnimation;
.super Lcn/nubia/videogenerator/slidemake/Animation;
.source "FloatAnimation.java"


# instance fields
.field private mCurrent:F

.field private final mFrom:F

.field private final mTo:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/Animation;-><init>()V

    .line 26
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mFrom:F

    .line 27
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mTo:F

    .line 28
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mCurrent:F

    .line 29
    invoke-virtual {p0, p3}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .line 44
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mCurrent:F

    return v0
.end method

.method protected onCalculate(F)V
    .locals 2

    .line 40
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mFrom:F

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mTo:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mCurrent:F

    return-void
.end method

.method public start()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcn/nubia/videogenerator/slidemake/Animation;->start()V

    .line 35
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mFrom:F

    iput v0, p0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->mCurrent:F

    return-void
.end method
