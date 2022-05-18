.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;
.super Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private e:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1550
    const/4 v0, 0x0

    sget v1, Lcn/nubia/commonui/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1551
    iput-boolean p2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->b:Z

    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setCacheColorHint(I)V

    .line 1553
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1627
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->c:Z

    .line 1628
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setPressed(Z)V

    .line 1630
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->drawableStateChanged()V

    .line 1632
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1636
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1622
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1623
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->performItemClick(Landroid/view/View;IJ)Z

    .line 1624
    return-void
.end method

.method private a(Landroid/view/View;IFF)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1639
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->c:Z

    .line 1643
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setPressed(Z)V

    .line 1644
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->layoutChildren()V

    .line 1647
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setSelection(I)V

    .line 1648
    invoke-virtual {p0, p2, p1, p3, p4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 1653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setSelectorEnabled(Z)V

    .line 1657
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->refreshDrawableState()V

    .line 1658
    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;Z)Z
    .locals 0

    .prologue
    .line 1498
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1562
    .line 1565
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1566
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    move v3, v2

    .line 1599
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    .line 1600
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a()V

    .line 1604
    :cond_2
    if-eqz v3, :cond_7

    .line 1605
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->e:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v0, :cond_3

    .line 1606
    new-instance v0, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->e:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 1608
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->e:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 1609
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->e:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1614
    :cond_4
    :goto_2
    return v3

    :pswitch_0
    move v0, v1

    move v3, v1

    .line 1569
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1574
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1575
    if-gez v4, :cond_5

    move v0, v1

    move v3, v1

    .line 1577
    goto :goto_1

    .line 1580
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1581
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 1582
    invoke-virtual {p0, v5, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->pointToPosition(II)I

    move-result v6

    .line 1583
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v3, v0

    move v0, v2

    .line 1585
    goto :goto_1

    .line 1588
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1589
    int-to-float v5, v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v6, v5, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Landroid/view/View;IFF)V

    .line 1592
    if-ne v3, v2, :cond_0

    .line 1593
    invoke-direct {p0, v0, v6}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1610
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->e:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v0, :cond_4

    .line 1611
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->e:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto :goto_2

    :pswitch_2
    move v0, v2

    goto :goto_3

    .line 1566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1698
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1668
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
