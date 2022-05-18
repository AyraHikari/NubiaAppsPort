.class public Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/layout/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerAnimation"
.end annotation


# instance fields
.field private mCurrent:I

.field private mEnabled:Z

.field private mFrom:I

.field private mTarget:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mCurrent:I

    .line 34
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mFrom:I

    .line 35
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 55
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mCurrent:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .line 59
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mTarget:I

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3

    .line 64
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mFrom:I

    int-to-float v1, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mTarget:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mCurrent:I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mEnabled:Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mEnabled:Z

    return-void
.end method

.method public startAnimateTo(I)V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mEnabled:Z

    if-nez v0, :cond_0

    .line 43
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mCurrent:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mTarget:I

    return-void

    .line 46
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mTarget:I

    if-ne p1, v0, :cond_1

    return-void

    .line 48
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mCurrent:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mFrom:I

    .line 49
    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->mTarget:I

    const/16 p1, 0xb4

    .line 50
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->setDuration(I)V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->start()V

    return-void
.end method
