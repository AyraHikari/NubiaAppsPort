.class Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;
.super Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

.field private final b:[I

.field private c:Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 381
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .line 382
    sget v0, Lcn/nubia/commonui/R$attr;->actionBarTabStyle:I

    invoke-direct {p0, p2, v3, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->b:[I

    .line 383
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->c:Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    .line 385
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->b:[I

    sget v1, Lcn/nubia/commonui/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v3, v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 392
    if-eqz p4, :cond_1

    .line 393
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setGravity(I)V

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a()V

    .line 397
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v6, 0x8

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 442
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->c:Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    .line 443
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    .line 444
    if-eqz v3, :cond_4

    .line 445
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 446
    if-eq v0, p0, :cond_1

    .line 447
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    :cond_0
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->addView(Landroid/view/View;)V

    .line 450
    :cond_1
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->f:Landroid/view/View;

    .line 451
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    :cond_3
    :goto_0
    return-void

    .line 457
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 458
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->removeView(Landroid/view/View;)V

    .line 459
    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->f:Landroid/view/View;

    .line 462
    :cond_5
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 463
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 465
    if-eqz v0, :cond_b

    .line 466
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    .line 467
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 468
    new-instance v5, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v5, v8, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 470
    iput v9, v5, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 471
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {p0, v4, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->addView(Landroid/view/View;I)V

    .line 473
    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    .line 475
    :cond_6
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    :cond_7
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 483
    :goto_2
    if-eqz v0, :cond_d

    .line 484
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    if-nez v4, :cond_8

    .line 485
    new-instance v4, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v4, v5, v7, v6}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 487
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 488
    new-instance v5, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v5, v8, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 490
    iput v9, v5, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 491
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->addView(Landroid/view/View;)V

    .line 493
    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    .line 495
    :cond_8
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    :cond_9
    :goto_3
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 503
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 506
    :cond_a
    if-nez v0, :cond_e

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 507
    invoke-virtual {p0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 477
    :cond_b
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v0, v1

    .line 482
    goto :goto_2

    .line 497
    :cond_d
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 498
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 509
    :cond_e
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 510
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->setLongClickable(Z)V

    goto/16 :goto_0
.end method

.method public a(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->c:Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    .line 401
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a()V

    .line 402
    return-void
.end method

.method public b()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->c:Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 417
    const-class v0, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 418
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 426
    const-class v0, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 428
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 516
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 517
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getLocationOnScreen([I)V

    .line 519
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 520
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getWidth()I

    move-result v2

    .line 521
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getHeight()I

    move-result v3

    .line 522
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 524
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->c:Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 527
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 530
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 435
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 439
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 407
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->setSelected(Z)V

    .line 408
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 409
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->sendAccessibilityEvent(I)V

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
