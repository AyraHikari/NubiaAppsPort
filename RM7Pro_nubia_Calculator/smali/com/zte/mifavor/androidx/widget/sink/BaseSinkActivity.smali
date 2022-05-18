.class public Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseSinkActivity.java"


# static fields
.field public static final APPBAR_STATE_COLLAPSED:I = 0x2

.field public static final APPBAR_STATE_EXPANDED:I = 0x1

.field public static final APPBAR_STATE_EXPANDED_ACROSS_BOUNDARY:I = 0x4

.field public static final APPBAR_STATE_IDLE:I = 0x3

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BaseSinkActivity"


# instance fields
.field private mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

.field protected mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingToolbarLy:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mDisableSinkingStatus:Z

.field protected mPrimaryTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field protected mSecondaryTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mDisableSinkingStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setAppBarDragCallback(Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setAppBarAcceptNestedScroll(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateWidthDecrementOfTitleView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/widget/TextView;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateWidthDecrementOfTitleViewInternal(Landroid/widget/TextView;I)V

    return-void
.end method

.method private addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    :try_start_0
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BaseSinkActivity"

    const-string p2, "addToRootCoordinatorLy, Exception"

    .line 287
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private callDependentViewChangedOfTitleView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p0, "BaseSinkActivity"

    const-string p1, "callDependentViewChangedOfTitleView, titleView is null !!!"

    .line 537
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    const-string p0, "BaseSinkActivity"

    const-string p1, "callDependentViewChangedOfTitleView, titleIndex < 0 !!!"

    .line 543
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :cond_1
    new-instance v0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMaxCollapsedTitleViewWidth()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initActionBar()V
    .locals 1

    .line 76
    sget v0, Lcom/zte/extres/R$id;->base_sink_toolbar:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 78
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const-string p0, "BaseSinkActivity"

    const-string v0, "initActionBar out"

    .line 81
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initSecondaryTitleInternal(Ljava/lang/String;ZZZILjava/lang/String;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v7, p0

    .line 243
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "BaseSinkActivity"

    const-string v1, "initSecondaryTitleInternal, mSecondaryTitle is not null !"

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    .line 249
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$id;->base_sink_page_secondary_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 250
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 251
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    move-object v6, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 255
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    sget v2, Lcom/zte/extres/R$style;->mfvc_appbar_secondary_font:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_secondary_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 258
    iget-object v2, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_secondary_font02_size_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 261
    iget-object v2, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 263
    new-instance v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v0, -0x2

    move/from16 v1, p7

    invoke-direct {v8, v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    move v0, p5

    .line 266
    invoke-virtual {v8, p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setMarginStart(I)V

    .line 268
    new-instance v9, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;-><init>(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 271
    iget-object v0, v7, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    return-void
.end method

.method private initTitleViewInternal(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 168
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseSinkActivity"

    const-string v1, "initTitleViewInternal, input primary title is Empty !!!"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTitleViewWidth(Landroid/content/Context;)I

    move-result v11

    if-eqz p6, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_list_ic_txt_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 179
    :goto_1
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 180
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    .line 181
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$id;->base_sink_page_primary_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 182
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 183
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 186
    new-instance v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v14, v11, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {v14, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setMarginStart(I)V

    if-eqz v10, :cond_5

    .line 191
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 199
    :cond_3
    new-instance v7, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;

    move-object v0, v7

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p1

    move-object v12, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;-><init>(Landroid/content/Context;ZZZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 202
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v14}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 204
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_4

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v13

    move-object/from16 v6, p1

    move v7, v11

    .line 205
    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initSecondaryTitleInternal(Ljava/lang/String;ZZZILjava/lang/String;I)V

    goto :goto_4

    .line 209
    :cond_4
    invoke-direct {p0, v10}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateSecondaryTitleInternal(Ljava/lang/String;)V

    goto :goto_4

    .line 192
    :cond_5
    :goto_2
    new-instance v6, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;

    move-object v0, v6

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;-><init>(Landroid/content/Context;ZZZLjava/lang/String;)V

    invoke-virtual {v14, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 194
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v14}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    const-string v0, "BaseSinkActivity"

    const-string v1, "initTitleViewInternal, secondary title not specified !!!"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 213
    :cond_6
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_9

    .line 214
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 219
    :cond_7
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_8

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v13

    move-object/from16 v6, p1

    move v7, v11

    .line 220
    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initSecondaryTitleInternal(Ljava/lang/String;ZZZILjava/lang/String;I)V

    goto :goto_4

    .line 223
    :cond_8
    invoke-direct {p0, v10}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateSecondaryTitleInternal(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    const-string v0, "BaseSinkActivity"

    const-string v1, "initTitleViewInternal, update, secondary title not specified !!!"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_4
    invoke-direct {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getMaxCollapsedTitleViewWidth()V

    const-string v0, "BaseSinkActivity"

    const-string v1, "initTitleViewInternal out"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initView()V
    .locals 2

    .line 86
    sget v0, Lcom/zte/extres/R$id;->base_sink_root_coordinator_layout:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 88
    sget v0, Lcom/zte/extres/R$id;->base_sink_app_bar_layout:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 90
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 91
    iget-object v1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sget v0, Lcom/zte/extres/R$id;->base_sink_collapsing_toolbar_layout:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mCollapsingToolbarLy:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const-string p0, "BaseSinkActivity"

    const-string v0, "initView out"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setAppBarAcceptNestedScroll(Z)V
    .locals 1

    .line 520
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez p0, :cond_0

    const-string p0, "BaseSinkActivity"

    const-string p1, "setAppBarAcceptNestedScroll, params is null !!!"

    .line 522
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 526
    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 527
    instance-of v0, p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;

    if-nez v0, :cond_1

    goto :goto_0

    .line 532
    :cond_1
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayoutSpringBehavior;->setAcceptNestedScroll(Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "BaseSinkActivity"

    const-string p1, "setAppBarAcceptNestedScroll, behavior is null or not AppBarLayoutSpringBehavior !!!"

    .line 528
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setAppBarDragCallback(Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 504
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez p0, :cond_0

    const-string p0, "BaseSinkActivity"

    const-string p1, "setAppBarDragCallback, params is null !!!"

    .line 506
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 511
    instance-of v0, p0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-nez v0, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "BaseSinkActivity"

    const-string p1, "setAppBarDragCallback, behavior is null or not AppBarLayout.Behavior !!!"

    .line 512
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSecondaryTitleInternal(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 275
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string p0, "BaseSinkActivity"

    const-string p1, "updateSecondaryTitleInternal, mSecondaryTitle is null !"

    .line 276
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTitleViewInternal(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    move-object/from16 v9, p2

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseSinkActivity"

    const-string v1, "updateTitleViewInternal, input primary title text is Empty !!!"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_0
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "BaseSinkActivity"

    const-string v1, "updateTitleViewInternal, primary title is null, has not been initialized !!!"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 354
    :cond_1
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    .line 356
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    .line 360
    :cond_2
    invoke-static {p0}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTitleViewWidth(Landroid/content/Context;)I

    move-result v10

    .line 362
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    move-object v11, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    .line 364
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v12, -0x2

    if-nez v0, :cond_3

    .line 366
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v10, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    :cond_3
    move-object v13, v0

    if-eqz p6, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 373
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_list_ic_txt_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 374
    :cond_5
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 375
    :goto_1
    invoke-virtual {v13, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setMarginStart(I)V

    if-eqz v9, :cond_a

    .line 377
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_3

    .line 385
    :cond_6
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 386
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    .line 387
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    sget v1, Lcom/zte/extres/R$id;->base_sink_page_secondary_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 388
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 389
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_7

    .line 393
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    sget v2, Lcom/zte/extres/R$style;->mfvc_appbar_secondary_font:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    .line 395
    :cond_7
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_secondary_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 396
    iget-object v2, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    :goto_2
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_secondary_font02_size_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 399
    iget-object v2, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "BaseSinkActivity"

    const-string v1, "updateTitleViewInternal, secondary title is specified, created"

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_8
    new-instance v6, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;

    move-object v0, v6

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v12, v6

    move-object v6, p1

    move v11, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;-><init>(Landroid/content/Context;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v13, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 409
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v13}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 411
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v12, v0, v1, v2}, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 413
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    .line 415
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez v0, :cond_9

    .line 417
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    :cond_9
    move-object v7, v0

    .line 422
    invoke-virtual {v7, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setMarginStart(I)V

    .line 424
    new-instance v10, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;-><init>(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v7, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 428
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v7}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 430
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v10, v0, v1, v2}, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    goto :goto_4

    .line 378
    :cond_a
    :goto_3
    new-instance v6, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;

    move-object v0, v6

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;-><init>(Landroid/content/Context;ZZZLjava/lang/String;)V

    .line 380
    invoke-virtual {v13, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 381
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v13}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->addToRootCoordinatorLy(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 383
    iget-object v0, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v6, v0, v1, v2}, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 433
    :goto_4
    invoke-direct {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getMaxCollapsedTitleViewWidth()V

    const-string v0, "BaseSinkActivity"

    const-string v1, "updateTitleViewInternal out"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateWidthDecrementOfTitleView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 581
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getPaddingEnd()I

    move-result v0

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int v1, p1, v0

    .line 585
    iget-object v2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateWidthDecrementOfTitleViewInternal(Landroid/widget/TextView;I)V

    .line 586
    iget-object v2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateWidthDecrementOfTitleViewInternal(Landroid/widget/TextView;I)V

    const-string p0, "BaseSinkActivity"

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidthDecrementOfTitleView, isLaidOut, actionMenuViewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", paddingEnd="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method private updateWidthDecrementOfTitleViewInternal(Landroid/widget/TextView;I)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p0, "BaseSinkActivity"

    const-string p1, "updateWidthDecrementOfTitleViewInternal, titleView is null !!!"

    .line 617
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    const-string p0, "BaseSinkActivity"

    const-string p1, "updateWidthDecrementOfTitleViewInternal, titleIndex < 0 !!!"

    .line 623
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 627
    :cond_1
    new-instance v0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$7;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected disableSinking()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mCollapsingToolbarLy:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 150
    iget-object v2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mCollapsingToolbarLy:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 153
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$dimen;->mfvc_appbar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 154
    iput v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    .line 155
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    const-string p0, "BaseSinkActivity"

    const-string v0, "disableSinking out"

    .line 158
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected disableSinkingExt(Z)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 442
    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mDisableSinkingStatus:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 447
    iput-boolean v1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mDisableSinkingStatus:Z

    .line 448
    iget-object v1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    new-instance v1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$1;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;)V

    invoke-direct {p0, v1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setAppBarDragCallback(Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;)V

    .line 456
    invoke-direct {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setAppBarAcceptNestedScroll(Z)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 478
    :cond_2
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mDisableSinkingStatus:Z

    .line 479
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setAppBarDragCallback(Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;)V

    .line 481
    invoke-direct {p0, v1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->setAppBarAcceptNestedScroll(Z)V

    goto :goto_0

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;-><init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    const-string p0, "BaseSinkActivity"

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableSinkingExt out, disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAppBarExpandState()I
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 657
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_appbar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 658
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBottom()I

    move-result p0

    add-int/2addr v0, v1

    if-le p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-ne v0, p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    const-string v0, "BaseSinkActivity"

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppBarExpandState-Spring, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getDisableSinkingStatus()Z
    .locals 0

    .line 674
    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mDisableSinkingStatus:Z

    return p0
.end method

.method protected initPageSinkStatus(Z)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 311
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->callDependentViewChangedOfTitleView(Landroid/widget/TextView;)V

    .line 312
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->callDependentViewChangedOfTitleView(Landroid/widget/TextView;)V

    const-string p0, "BaseSinkActivity"

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPageSinkStatus out, isSink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initSearchTitleView(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initTitleViewInternal(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method protected initTitleView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 109
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initTitleView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initTitleView(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 117
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initTitleView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initTitleView(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initTitleView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initTitleView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initTitleView(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected initTitleView(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 131
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initTitleViewInternal(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public isAppBarLyFullyExpanded()Z
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BaseSinkActivity"

    const-string v1, "onCreate in"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget p1, Lcom/zte/extres/R$layout;->activity_base_sink_layout:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initActionBar()V

    .line 66
    invoke-direct {p0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->initView()V

    .line 68
    new-instance p1, Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    .line 69
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onCreate()V

    const-string p0, "BaseSinkActivity"

    const-string p1, "onCreate out"

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 102
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onDestroy()V

    const-string p0, "BaseSinkActivity"

    const-string v0, "onDestroy out"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateSearchTitleView(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 334
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateTitleViewInternal(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method protected updateTitleText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 297
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 298
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string p0, "BaseSinkActivity"

    const-string p1, "updateTitleText out"

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateTitleView(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 324
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateTitleViewInternal(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method
