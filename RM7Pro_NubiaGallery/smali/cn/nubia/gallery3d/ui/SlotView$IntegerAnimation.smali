.class Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerAnimation"
.end annotation


# instance fields
.field private mCurrent:I

.field private mEnabled:Z

.field private mFrom:I

.field private mTarget:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 648
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    const/4 v0, 0x0

    .line 650
    iput v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    .line 651
    iput v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    .line 652
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 672
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .line 676
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3

    .line 681
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    int-to-float v1, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 682
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    return-void
.end method

.method public startAnimateTo(I)V
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    if-nez v0, :cond_0

    .line 660
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    return-void

    .line 663
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    if-ne p1, v0, :cond_1

    return-void

    .line 665
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    .line 666
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    const/16 p1, 0xb4

    .line 667
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->setDuration(I)V

    .line 668
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;->start()V

    return-void
.end method
