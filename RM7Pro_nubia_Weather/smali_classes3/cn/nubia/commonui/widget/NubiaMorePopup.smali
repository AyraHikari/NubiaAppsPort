.class public Lcn/nubia/commonui/widget/NubiaMorePopup;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;,
        Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;,
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

.field private mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

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

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ebd70a4    # 0.37f

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    .line 74
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 82
    const-string v0, "ss_is_split_screen"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->MUTI_WINDOW_STATUS:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$1;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$2;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    .line 102
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mLastClickTime:J

    .line 104
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 110
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e8f5c29    # 0.28f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e570a3d    # 0.21f

    const v3, 0x3f147ae1    # 0.58f

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 114
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const-string v1, "setLayoutInScreenEnabled"

    new-array v4, v6, [Ljava/lang/Object;

    .line 116
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 115
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7, v7}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 123
    const-string v0, "android.view.WindowManagerGlobal"

    const-string v1, "getWindowManagerService"

    invoke-static {v0, v1, v6, v6}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mWindowManager:Ljava/lang/Object;

    .line 124
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const-string v1, "setLayoutInScreenEnabled"

    new-array v4, v6, [Ljava/lang/Object;

    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 118
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaMorePopup;)[Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/MorePopupRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaMorePopup;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    return-object v0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, "img":Landroid/widget/ImageView;
    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_more_popup_operation_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 496
    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 450
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 451
    .local v6, "textView":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 452
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 453
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 454
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 455
    .local v5, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 456
    .local v3, "realMarginLeft":I
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v7, v7, v9

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 457
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v7, v7, v9

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getAbsScreenHeight()I

    move-result v8

    sub-int v3, v7, v8

    .line 461
    :goto_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 462
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v3

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 463
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v1, v7, v8

    .line 464
    .local v1, "padding":I
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 468
    .end local v1    # "padding":I
    :goto_1
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 470
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 471
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 476
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 477
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 479
    .local v0, "bottomPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 480
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 483
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    return-void

    .line 459
    .end local v0    # "bottomPara":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v3, v7, v9

    goto :goto_0

    .line 466
    :cond_2
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private createContainer()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    .line 282
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createListView()V

    .line 283
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 225
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 227
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 228
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 233
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    .line 234
    .local v0, "gravity":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 235
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 236
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 237
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 238
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 239
    return-void

    .line 230
    .end local v0    # "gravity":I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 233
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createContentView(Z)V
    .locals 3
    .param p1, "isToTop"    # Z

    .prologue
    .line 242
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 243
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 244
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 245
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 246
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 247
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 252
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    .line 253
    .local v0, "gravity":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 254
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 255
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 256
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 257
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 258
    return-void

    .line 249
    .end local v0    # "gravity":I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 252
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createListView()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    .line 262
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$5;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$5;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    :cond_0
    return-void
.end method

.method private createPopupWindow(Z)V
    .locals 6
    .param p1, "onTop"    # Z

    .prologue
    const/4 v4, -0x1

    .line 308
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 309
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;)V

    .line 312
    .local v1, "container":Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v0, "backPara":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 336
    return-void

    .line 322
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_listview_width_land:I

    .line 324
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 326
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    .restart local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_right_padding_land:I

    .line 330
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 407
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 408
    .local v5, "textView":Landroid/widget/LinearLayout;
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 410
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v7

    if-nez v7, :cond_1

    .line 411
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 412
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    .line 413
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v4, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 433
    :goto_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 438
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_size:I

    .line 439
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 440
    .local v6, "topPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 441
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 444
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    return-void

    .line 416
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "topPara":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_top_width:I

    .line 417
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_default_height:I

    .line 418
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .restart local v4    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .line 420
    .local v2, "realMarginLeft":I
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v7, v7, v9

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 421
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v7, v7, v9

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getAbsScreenHeight()I

    move-result v8

    sub-int v2, v7, v8

    .line 425
    :goto_1
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 426
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v2

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_top_width:I

    .line 427
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v0, v7, v8

    .line 428
    .local v0, "padding":I
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 423
    .end local v0    # "padding":I
    :cond_2
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v2, v7, v9

    goto :goto_1

    .line 430
    :cond_3
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private getAbsScreenHeight()I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 487
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 488
    .local v6, "size":Landroid/graphics/Point;
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

    .line 490
    iget v0, v6, Landroid/graphics/Point;->y:I

    return v0
.end method

.method private getInitHeight()I
    .locals 4

    .prologue
    .line 555
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 556
    const/4 v0, 0x0

    .line 565
    :cond_0
    :goto_0
    return v0

    .line 558
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 559
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "height":I
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 563
    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getPopupWindowInfo(Landroid/view/View;I)Z
    .locals 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    const/4 v9, 0x1

    .line 507
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 508
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 509
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 510
    .local v1, "bottomEdge":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 512
    .local v8, "topEdge":I
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 513
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 514
    iget-object v10, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 516
    aget v10, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v1, v10

    sub-int v3, v10, p2

    .line 519
    .local v3, "distanceToBottom":I
    if-gez v3, :cond_0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 521
    .local v6, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 522
    .local v7, "scrollY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 523
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, p2

    invoke-direct {v5, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 524
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v5, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 525
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 528
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "scrollX":I
    .end local v7    # "scrollY":I
    :cond_0
    aget v10, v0, v9

    sub-int/2addr v10, v8

    add-int v4, v10, p2

    .line 529
    .local v4, "distanceToTop":I
    if-le v4, v3, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getScreenHeight()I
    .locals 6

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "heightPixels":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 341
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 350
    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    return v0

    .line 344
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 345
    .local v1, "metric":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    .line 346
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 347
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 348
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private getScreenWidth()I
    .locals 6

    .prologue
    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, "widthPixels":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 357
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 365
    .end local v1    # "rootView":Landroid/view/View;
    :goto_0
    return v2

    .line 359
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 360
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    .line 361
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 362
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 363
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private initItemsState([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    .line 734
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    .line 735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 736
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 287
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_more_popup:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 289
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_more_popup_fade_popup:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 291
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_panel:I

    .line 292
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 293
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_top_divider:I

    .line 294
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    .line 295
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_bottom_divider:I

    .line 296
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    .line 297
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_list:I

    .line 298
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 299
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_top_View:I

    .line 300
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    .line 301
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_bottom_View:I

    .line 302
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    .line 303
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_more_popup_mock_status_bar:I

    .line 304
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    .line 305
    return-void
.end method

.method private isMultiScreenOpen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
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

    .line 163
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 538
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 539
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 542
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 544
    .local v1, "childMeasureWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 545
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 551
    .local v0, "childMeasureHeight":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 552
    return-void

    .line 548
    .end local v0    # "childMeasureHeight":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childMeasureHeight":I
    goto :goto_0
.end method

.method private setViewBackgroundColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$color;->nubia_more_popup_mask_background:I

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 403
    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xc8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 569
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v1

    .line 577
    .local v1, "height":I
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v3, :cond_2

    .line 578
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v7, [F

    int-to-float v6, v1

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 584
    .local v2, "totalTranslate":Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v2, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 585
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 588
    .local v0, "backgroudAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 589
    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup$6;

    invoke-direct {v3, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$6;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 597
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 598
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 573
    .end local v0    # "backgroudAlpha":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    .end local v2    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 574
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    goto :goto_1

    .line 581
    .restart local v1    # "height":I
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v7, [F

    neg-int v6, v1

    int-to-float v6, v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "totalTranslate":Landroid/animation/Animator;
    goto :goto_2

    .line 587
    nop

    :array_0
    .array-data 4
        0x0
        0x99
    .end array-data
.end method

.method private updatePopupWindow(Z)V
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 369
    if-eqz p1, :cond_1

    .line 370
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 375
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 376
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 396
    return-void

    .line 379
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "flag":I
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 388
    :cond_2
    invoke-static {v0}, Lcn/nubia/commonui/util/UiUtils;->isFullScreenWindow(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcn/nubia/commonui/util/UiUtils;->isImmersedStatusBar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_0

    .line 392
    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 219
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 220
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    .line 131
    return-void
.end method

.method public setImageView(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 500
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    .line 501
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 502
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 503
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mCancelImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 504
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    aput-boolean p2, v0, p1

    .line 160
    return-void
.end method

.method public setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 156
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 150
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    .line 151
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 152
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 171
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView()V

    .line 179
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 181
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$3;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 179
    :cond_2
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public show(Z)V
    .locals 4
    .param p1, "isToTop"    # Z

    .prologue
    const/4 v3, -0x1

    .line 194
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView(Z)V

    .line 202
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$4;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$4;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 202
    :cond_2
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 12
    .param p1, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    const-wide/16 v10, 0x96

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 602
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 608
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    .line 607
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 613
    .local v1, "totalTranslate":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 614
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 616
    .local v0, "backgroudAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 617
    new-instance v2, Lcn/nubia/commonui/widget/NubiaMorePopup$7;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$7;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 624
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 625
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup$8;

    invoke-direct {v3, p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$8;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 631
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 610
    .end local v0    # "backgroudAlpha":Landroid/animation/ValueAnimator;
    .end local v1    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 611
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    .line 610
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "totalTranslate":Landroid/animation/Animator;
    goto :goto_1

    .line 615
    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method
