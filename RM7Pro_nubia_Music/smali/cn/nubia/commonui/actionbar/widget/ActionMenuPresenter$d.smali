.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;
.super Lcn/nubia/commonui/actionbar/internal/widget/TintImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private final b:[F


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 589
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 590
    const/4 v0, 0x0

    sget v1, Lcn/nubia/commonui/R$attr;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 587
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->b:[F

    .line 592
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->setClickable(Z)V

    .line 593
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->setFocusable(Z)V

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->setVisibility(I)V

    .line 595
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->setEnabled(Z)V

    .line 597
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;

    invoke-direct {v0, p0, p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d$1;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;Landroid/view/View;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 630
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return v1

    .line 634
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->playSoundEffect(I)V

    .line 635
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8

    .prologue
    .line 651
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintImageView;->setFrame(IIII)Z

    move-result v0

    .line 654
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 655
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 656
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getWidth()I

    move-result v1

    .line 658
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getHeight()I

    move-result v3

    .line 659
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 660
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 661
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$d;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 662
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 663
    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 664
    sub-int v5, v1, v4

    sub-int v6, v3, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v6, v1, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 668
    :cond_0
    return v0
.end method
