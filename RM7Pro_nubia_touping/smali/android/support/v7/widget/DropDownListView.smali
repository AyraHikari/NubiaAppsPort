.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;,
        Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field private mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 50
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 51
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    .line 52
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    .line 53
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 118
    iput-boolean p2, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 119
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->setCacheColorHint(I)V

    .line 122
    :try_start_0
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mIsChildViewEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 123
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;)Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/DropDownListView;
    .param p1, "x1"    # Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .prologue
    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    return-object p1
.end method

.method private clearPressedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 628
    iput-boolean v3, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 629
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 631
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    .line 633
    iget v1, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 638
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 642
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 541
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 542
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 543
    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 564
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 566
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 568
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 571
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 603
    iget-object v2, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 604
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 607
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 608
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 609
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 610
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 615
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 616
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v1, :cond_0

    .line 617
    iget-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 619
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v1    # "isChildViewEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 617
    .restart local v1    # "isChildViewEnabled":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 622
    .end local v1    # "isChildViewEnabled":Z
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 585
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 586
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 587
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 591
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->positionSelectorCompat(ILandroid/view/View;)V

    .line 593
    if-eqz v1, :cond_1

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 595
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 596
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 597
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 598
    invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 600
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 586
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 597
    goto :goto_1
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 576
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 577
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 578
    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 580
    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 645
    iput-boolean v5, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 648
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_0

    .line 649
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 656
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->layoutChildren()V

    .line 660
    iget v3, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 661
    iget v3, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 662
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 666
    .end local v2    # "motionView":Landroid/view/View;
    :cond_2
    iput p2, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 670
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 671
    .local v1, "childY":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_3

    .line 672
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 674
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 675
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 679
    :cond_4
    invoke-direct {p0, p2, p1, p3, p4}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 684
    invoke-direct {p0, v6}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 688
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V

    .line 689
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    return v0
.end method

.method private updateSelectorStateCompat()V
    .locals 2

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 561
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "drawSelectorOnTop":Z
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DropDownListView;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 203
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 192
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->updateSelectorStateCompat()V

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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
    .line 143
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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
    .line 153
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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
    .line 133
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

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

.method public lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 228
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 229
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 234
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 235
    if-eqz p2, :cond_2

    .line 236
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 237
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 241
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 242
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 247
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 250
    goto :goto_0

    .line 252
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 255
    goto :goto_0
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingTop()I

    move-result v14

    .line 290
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingBottom()I

    move-result v11

    .line 291
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingLeft()I

    move-result v12

    .line 292
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingRight()I

    move-result v13

    .line 293
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getDividerHeight()I

    move-result v16

    .line 294
    .local v16, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 296
    .local v6, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 298
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_1

    .line 299
    add-int v15, v14, v11

    .line 368
    :cond_0
    :goto_0
    return v15

    .line 303
    :cond_1
    add-int v17, v14, v11

    .line 304
    .local v17, "returnedHeight":I
    if-lez v16, :cond_6

    if-eqz v6, :cond_6

    move/from16 v7, v16

    .line 309
    .local v7, "dividerHeight":I
    :goto_1
    const/4 v15, 0x0

    .line 311
    .local v15, "prevHeightWithoutPartialChild":I
    const/4 v3, 0x0

    .line 312
    .local v3, "child":Landroid/view/View;
    const/16 v18, 0x0

    .line 313
    .local v18, "viewType":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 314
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_a

    .line 315
    invoke-interface {v2, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    .line 316
    .local v10, "newType":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_2

    .line 317
    const/4 v3, 0x0

    .line 318
    move/from16 v18, v10

    .line 320
    :cond_2
    move-object/from16 v0, p0

    invoke-interface {v2, v9, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 324
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 326
    .local v4, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_3

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 328
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_3
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    if-lez v19, :cond_7

    .line 332
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 337
    .local v8, "heightMeasureSpec":I
    :goto_3
    move/from16 v0, p1

    invoke-virtual {v3, v0, v8}, Landroid/view/View;->measure(II)V

    .line 341
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 343
    if-lez v9, :cond_4

    .line 345
    add-int v17, v17, v7

    .line 348
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v17, v17, v19

    .line 350
    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    .line 353
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v9, v0, :cond_5

    if-lez v15, :cond_5

    move/from16 v0, v17

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    :cond_5
    move/from16 v15, p4

    goto :goto_0

    .line 304
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "count":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "i":I
    .end local v10    # "newType":I
    .end local v15    # "prevHeightWithoutPartialChild":I
    .end local v18    # "viewType":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 335
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "count":I
    .restart local v7    # "dividerHeight":I
    .restart local v9    # "i":I
    .restart local v10    # "newType":I
    .restart local v15    # "prevHeightWithoutPartialChild":I
    .restart local v18    # "viewType":I
    :cond_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "heightMeasureSpec":I
    goto :goto_3

    .line 361
    :cond_8
    if-ltz p5, :cond_9

    move/from16 v0, p5

    if-lt v9, v0, :cond_9

    .line 362
    move/from16 v15, v17

    .line 314
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "heightMeasureSpec":I
    .end local v10    # "newType":I
    :cond_a
    move/from16 v15, v17

    .line 368
    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 471
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 472
    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 481
    const/4 v4, 0x1

    .line 482
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 484
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 485
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 519
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->clearPressedItem()V

    .line 523
    :cond_2
    if-eqz v4, :cond_7

    .line 524
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v8, :cond_3

    .line 525
    new-instance v8, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v8, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 527
    :cond_3
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, v10}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 528
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 533
    :cond_4
    :goto_1
    return v4

    .line 487
    :pswitch_0
    const/4 v4, 0x0

    .line 488
    goto :goto_0

    .line 490
    :pswitch_1
    const/4 v4, 0x0

    .line 493
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 494
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 495
    const/4 v4, 0x0

    .line 496
    goto :goto_0

    .line 499
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 500
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 501
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 502
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 503
    const/4 v3, 0x1

    .line 504
    goto :goto_0

    .line 507
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 508
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Landroid/support/v7/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 509
    const/4 v4, 0x1

    .line 511
    if-ne v0, v10, :cond_0

    .line 512
    invoke-direct {p0, v2, v5}, Landroid/support/v7/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 529
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v8, :cond_4

    .line 530
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto :goto_1

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    .line 429
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1

    .line 433
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 437
    .local v0, "action":I
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v4, :cond_2

    .line 440
    new-instance v4, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$1;)V

    iput-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 441
    iget-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 445
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 446
    .local v1, "handled":Z
    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    .line 448
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v3

    .line 450
    .local v3, "position":I
    if-eq v3, v6, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 452
    .local v2, "hoveredItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 455
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/DropDownListView;->setSelectionFromTop(II)V

    .line 457
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->updateSelectorStateCompat()V

    goto :goto_0

    .line 462
    .end local v2    # "hoveredItem":Landroid/view/View;
    .end local v3    # "position":I
    :cond_5
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 209
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .prologue
    .line 553
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    .line 554
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    if-eqz p1, :cond_1

    new-instance v1, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    .line 169
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 176
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 177
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    .line 179
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 180
    return-void

    .line 168
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
