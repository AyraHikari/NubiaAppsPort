.class Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
.super Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;,
        Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$a;,
        Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;,
        Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;,
        Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;
    }
.end annotation


# instance fields
.field j:I

.field private k:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

.field private l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

.field private m:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

.field private n:I

.field private o:Z

.field private p:Landroid/graphics/Rect;

.field private final q:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->p:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Lcn/nubia/commonui/R$styleable;->Spinner:[I

    invoke-static {p1, p2, v0, p3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 167
    sget v1, Lcn/nubia/commonui/R$styleable;->Spinner_android_background:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget v1, Lcn/nubia/commonui/R$styleable;->Spinner_android_background:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 172
    sget v1, Lcn/nubia/commonui/R$styleable;->Spinner_spinnerMode:I

    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result p4

    .line 175
    :cond_1
    packed-switch p4, :pswitch_data_0

    .line 209
    :goto_0
    sget v1, Lcn/nubia/commonui/R$styleable;->Spinner_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->n:I

    .line 211
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    sget v2, Lcn/nubia/commonui/R$styleable;->Spinner_prompt:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->a(Ljava/lang/CharSequence;)V

    .line 213
    sget v1, Lcn/nubia/commonui/R$styleable;->Spinner_disableChildrenWhenDisabled:I

    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->o:Z

    .line 216
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 220
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->m:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->m:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iput-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->m:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

    .line 226
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->q:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 227
    return-void

    .line 177
    :pswitch_0
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$a;

    invoke-direct {v1, p0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    goto :goto_0

    .line 182
    :pswitch_1
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    sget v2, Lcn/nubia/commonui/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->j:I

    .line 187
    sget v2, Lcn/nubia/commonui/R$styleable;->Spinner_android_popupBackground:I

    .line 188
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    .line 191
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;

    invoke-direct {v2, p0, p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->k:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 559
    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 563
    :cond_0
    if-eqz p2, :cond_1

    .line 564
    invoke-virtual {p0, p1, v5, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 568
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->o:Z

    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 573
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->b:I

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 575
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c:I

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 585
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 586
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 592
    add-int/2addr v2, v5

    .line 594
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 595
    return-void
.end method

.method private b(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a(I)Landroid/view/View;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    .line 545
    :goto_0
    return-object v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 543
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 641
    if-nez p1, :cond_0

    .line 681
    :goto_0
    return v0

    .line 649
    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 651
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 655
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 656
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 657
    sub-int v3, v8, v1

    .line 658
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 659
    :goto_1
    if-ge v5, v8, :cond_2

    .line 660
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 661
    if-eq v0, v1, :cond_4

    move-object v1, v2

    .line 665
    :goto_2
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 667
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    :cond_1
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 672
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 659
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    .line 676
    :cond_2
    if-eqz p2, :cond_3

    .line 677
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->p:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 678
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method a(IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 464
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 466
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mDataChanged:Z

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->handleDataChanged()V

    .line 471
    :cond_0
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mItemCount:I

    if-nez v2, :cond_1

    .line 472
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a()V

    .line 514
    :goto_0
    return-void

    .line 476
    :cond_1
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mNextSelectedPosition:I

    if-ltz v2, :cond_2

    .line 477
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelectedPositionInt(I)V

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->b()V

    .line 483
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    .line 486
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mSelectedPosition:I

    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mFirstPosition:I

    .line 487
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_3

    .line 488
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mSelectedPosition:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->b(IZ)Landroid/view/View;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 491
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 492
    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->n:I

    invoke-static {v5, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 493
    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_0

    .line 501
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 505
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a()V

    .line 507
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->invalidate()V

    .line 509
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->checkSelectionChanged()V

    .line 511
    iput-boolean v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mDataChanged:Z

    .line 512
    iput-boolean v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mNeedSync:Z

    .line 513
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 495
    :sswitch_0
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v0, v1

    .line 496
    goto :goto_1

    .line 498
    :sswitch_1
    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    goto :goto_1

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 364
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a()V

    .line 366
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 367
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 368
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

    invoke-direct {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->m:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$b;

    goto :goto_0
.end method

.method a(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setOnItemClickListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    .line 419
    return-void
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 380
    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 383
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 389
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 391
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 393
    :cond_1
    return v0

    .line 384
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 385
    invoke-direct {p0, v3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->b(IZ)Landroid/view/View;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->i:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;

    invoke-virtual {v2, v3, v1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 613
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 614
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 615
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 401
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->dismiss()V

    .line 404
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mInLayout:Z

    .line 451
    invoke-virtual {p0, v1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(IZ)V

    .line 452
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mInLayout:Z

    .line 453
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 432
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 433
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v0

    .line 436
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 437
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 438
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    .line 435
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    .line 440
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 693
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;

    .line 695
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 697
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;->c:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_0

    .line 700
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)V

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 716
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 686
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 687
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SavedState;->c:Z

    .line 688
    return-object v1

    .line 687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->k:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->k:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 599
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    .line 601
    if-nez v0, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 604
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->l:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->show()V

    .line 609
    :cond_0
    return v0
.end method

.method public synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 336
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->o:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    .line 338
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 2

    .prologue
    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
