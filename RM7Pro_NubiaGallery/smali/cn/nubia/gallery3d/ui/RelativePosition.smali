.class public Lcn/nubia/gallery3d/ui/RelativePosition;
.super Ljava/lang/Object;
.source "RelativePosition.java"


# instance fields
.field private mAbsoluteX:F

.field private mAbsoluteY:F

.field private mReferenceX:F

.field private mReferenceY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 2

    .line 36
    iget v0, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mAbsoluteX:F

    iget v1, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mReferenceX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .line 40
    iget v0, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mAbsoluteY:F

    iget v1, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mReferenceY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public setAbsolutePosition(II)V
    .locals 0

    int-to-float p1, p1

    .line 26
    iput p1, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mAbsoluteX:F

    int-to-float p1, p2

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mAbsoluteY:F

    return-void
.end method

.method public setReferencePosition(II)V
    .locals 0

    int-to-float p1, p1

    .line 31
    iput p1, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mReferenceX:F

    int-to-float p1, p2

    .line 32
    iput p1, p0, Lcn/nubia/gallery3d/ui/RelativePosition;->mReferenceY:F

    return-void
.end method
