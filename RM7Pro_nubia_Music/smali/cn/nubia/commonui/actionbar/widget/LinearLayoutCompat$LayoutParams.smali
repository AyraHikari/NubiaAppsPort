.class public Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1791
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1793
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    .prologue
    .line 1806
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1807
    iput p3, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1808
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1777
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1771
    iput v3, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1778
    sget-object v0, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_Layout:[I

    .line 1779
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1781
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1782
    sget v1, Lcn/nubia/commonui/R$styleable;->LinearLayoutCompat_Layout_android_layout_gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1784
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1785
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1814
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1815
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1821
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1822
    return-void
.end method

.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;)V
    .locals 1

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1833
    iget v0, p1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1834
    iget v0, p1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1835
    return-void
.end method
