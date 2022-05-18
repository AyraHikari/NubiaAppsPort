.class public Lcn/nubia/commonui/widget/NubiaMorePopup;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaMorePopup$a;,
        Lcn/nubia/commonui/widget/NubiaMorePopup$b;,
        Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    }
.end annotation


# static fields
.field private static final ENTER_TOTAL_DURATION_TIME:J = 0xc8L

.field private static final EXIT_DELAY_TIME:J = 0x32L

.field private static final EXIT_PART_DURATION_TIME:J = 0x64L

.field private static final EXIT_TOTAL_DURATION_TIME:J = 0x96L

.field private static final NUBIA_MORE_POPUP_HEIGHT_RATE:F = 0.8f


# instance fields
.field private MUTI_WINDOW_STATUS:Ljava/lang/String;

.field private mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$a;

.field private mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

.field private mBottomDivider:Landroid/view/View;

.field private mBottomImageView:Landroid/widget/ImageView;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownList:Landroid/widget/ListView;

.field private mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field final mHandler:Landroid/os/Handler;

.field private mIsOnTop:Z

.field private mItemEnabled:[Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLastClickTime:J

.field private mMockStatusBarView:Landroid/view/View;

.field private mMoreImageView:Landroid/widget/ImageView;

.field private mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

.field private mMultiScreenView:Landroid/view/View;

.field private mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mParams:[I

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupPanel:Landroid/widget/LinearLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTopDivider:Landroid/view/View;

.field private mTopImageView:Landroid/widget/ImageView;

.field private mTopView:Landroid/widget/LinearLayout;

.field private mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mUserAdapter:Landroid/widget/BaseAdapter;

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ebd70a4    # 0.37f

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 76
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 83
    const-string v0, "ss_is_split_screen"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->MUTI_WINDOW_STATUS:Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$1;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$2;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    .line 105
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mLastClickTime:J

    .line 107
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 110
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e8f5c29    # 0.28f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 114
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e570a3d    # 0.21f

    const v3, 0x3f147ae1    # 0.58f

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 115
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 116
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 117
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const-string v1, "setLayoutInScreenEnabled"

    new-array v4, v6, [Ljava/lang/Object;

    .line 119
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 118
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7, v7}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 126
    const-string v0, "android.view.WindowManagerGlobal"

    const-string v1, "getWindowManagerService"

    invoke-static {v0, v1, v6, v6}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mWindowManager:Ljava/lang/Object;

    .line 127
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const-string v1, "setLayoutInScreenEnabled"

    new-array v4, v6, [Ljava/lang/Object;

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 121
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)[Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/MorePopupRelativeLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    return-object v0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 533
    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_more_popup_operation_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 534
    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 488
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 490
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 491
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 492
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 494
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v0, v0, v5

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 495
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v0, v0, v5

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getAbsScreenHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 499
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 500
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    sub-int v0, v4, v0

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 501
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 502
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 506
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 508
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 509
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 514
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 515
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 517
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 518
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v0, v0, v5

    goto :goto_0

    .line 504
    :cond_2
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private createContainer()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    .line 320
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createListView()V

    .line 321
    return-void
.end method

.method private createContentView()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 259
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 261
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 262
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 267
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    .line 268
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 271
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 272
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 273
    return-void

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 267
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createContentView(Z)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 277
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 278
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 280
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 281
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 286
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    .line 287
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 289
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 290
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 291
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 292
    return-void

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 286
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createListView()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$a;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$a;

    .line 296
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$5;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$5;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 315
    :cond_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private createPopupWindow(Z)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 348
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 349
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$b;

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;)V

    .line 352
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 356
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 373
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 376
    return-void

    .line 362
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_listview_width_land:I

    .line 364
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 366
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 368
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_right_padding_land:I

    .line 370
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 450
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 451
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_top_width:I

    .line 452
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_default_height:I

    .line 453
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 456
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v0, v0, v5

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 457
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v0, v0, v5

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getAbsScreenHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 461
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 462
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    sub-int v0, v4, v0

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_top_width:I

    .line 463
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 464
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 469
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 471
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 472
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 476
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 477
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 479
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v0, v0, v5

    goto :goto_0

    .line 466
    :cond_2
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private getAbsScreenHeight()I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 525
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 526
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mWindowManager:Ljava/lang/Object;

    const-string v1, "getInitialDisplaySize"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    aput-object v6, v4, v7

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v5, v7

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 528
    iget v0, v6, Landroid/graphics/Point;->y:I

    return v0
.end method

.method private getInitHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 593
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 597
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 599
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 600
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 601
    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPopupWindowInfo(Landroid/view/View;I)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 545
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 546
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 547
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 548
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 550
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 551
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 552
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 554
    aget v5, v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    sub-int/2addr v2, p2

    .line 557
    if-gez v2, :cond_0

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 560
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 561
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p2

    invoke-direct {v7, v5, v6, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    invoke-virtual {p1, v7, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 563
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 566
    :cond_0
    aget v1, v4, v0

    sub-int/2addr v1, v3

    add-int/2addr v1, p2

    .line 567
    if-le v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScreenHeight()I
    .locals 3

    .prologue
    .line 379
    .line 380
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 384
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 385
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 386
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 387
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 388
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private getScreenWidth()I
    .locals 3

    .prologue
    .line 394
    .line 395
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 405
    :goto_0
    return v0

    .line 399
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 401
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 402
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 403
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private initItemsState(I)V
    .locals 3

    .prologue
    .line 779
    new-array v0, p1, [Z

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    .line 780
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 781
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    return-void
.end method

.method private initItemsState([Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 772
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    .line 773
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 774
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 325
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_more_popup:I

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 327
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_more_popup_fade_popup:I

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 329
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_panel:I

    .line 330
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 331
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_top_divider:I

    .line 332
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    .line 333
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_bottom_divider:I

    .line 334
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_list:I

    .line 336
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 337
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_top_View:I

    .line 338
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    .line 339
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_bottom_View:I

    .line 340
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    .line 341
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_mock_status_bar:I

    .line 342
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_more_popup_multi_screen_bar:I

    .line 344
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMultiScreenView:Landroid/view/View;

    .line 345
    return-void
.end method

.method private isMultiScreenOpen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->MUTI_WINDOW_STATUS:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 576
    if-nez v0, :cond_0

    .line 577
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 580
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 582
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 583
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 589
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 590
    return-void

    .line 586
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private setViewBackgroundColor(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 442
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$color;->nubia_more_popup_mask_background:I

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 446
    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v0

    .line 615
    :goto_1
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_2

    .line 616
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v2, "translationY"

    new-array v3, v4, [F

    int-to-float v0, v0

    aput v0, v3, v5

    aput v7, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 622
    :goto_2
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 623
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 625
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 626
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 627
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopup$6;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$6;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 635
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 636
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 612
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    goto :goto_1

    .line 619
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v2, "translationY"

    new-array v3, v4, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v3, v5

    aput v7, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_2

    .line 625
    nop

    :array_0
    .array-data 4
        0x0
        0x99
    .end array-data
.end method

.method private updatePopupWindow(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 409
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 415
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 439
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 425
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 428
    :goto_1
    invoke-static {v0}, Lcn/nubia/commonui/util/UiUtils;->isFullScreenWindow(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcn/nubia/commonui/util/UiUtils;->isImmersedStatusBar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMultiScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 252
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 253
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 254
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;[Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    .line 176
    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 177
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 178
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initItemsState(I)V

    .line 179
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    .line 134
    return-void
.end method

.method public setImageView(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 538
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    .line 539
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 540
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 541
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 542
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    aput-boolean p2, v0, p1

    .line 194
    return-void
.end method

.method public setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 190
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mUserAdapter:Landroid/widget/BaseAdapter;

    .line 161
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 162
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    .line 163
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 164
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$a;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->a(Lcn/nubia/commonui/widget/NubiaMorePopup$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 166
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->notifyDataSetChanged()V

    .line 168
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 146
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 205
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView()V

    .line 213
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 215
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$3;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 213
    :cond_2
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public show(Z)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 228
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView(Z)V

    .line 236
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 238
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$4;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$4;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 236
    :cond_2
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 640
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v1, "translationY"

    new-array v2, v4, [F

    aput v3, v2, v5

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 646
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    .line 645
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 651
    :goto_1
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 652
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 653
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 654
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 655
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopup$7;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$7;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 662
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$8;

    invoke-direct {v1, p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$8;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v1, "translationY"

    new-array v2, v4, [F

    aput v3, v2, v5

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 649
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    .line 648
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    .line 653
    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method
