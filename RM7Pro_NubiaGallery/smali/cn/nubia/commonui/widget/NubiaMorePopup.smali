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

.field private mBottomImageView:Landroid/widget/Button;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mCancelImageView:Landroid/widget/Button;

.field private mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownList:Landroid/widget/ListView;

.field private mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field final mHandler:Landroid/os/Handler;

.field private mIsOnTop:Z

.field public mItemEnabled:[Z

.field public mItems:[Ljava/lang/CharSequence;

.field private mLastClickTime:J

.field private mMockStatusBarView:Landroid/view/View;

.field private mMoreImageView:Landroid/widget/Button;

.field private mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mParams:[I

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupPanel:Landroid/widget/LinearLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTopDivider:Landroid/view/View;

.field private mTopImageView:Landroid/widget/Button;

.field private mTopView:Landroid/widget/LinearLayout;

.field private mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, v0, v1, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 55
    iput-boolean v2, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 69
    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    .line 77
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 78
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const-string v3, "ss_multi_window_enabled"

    .line 85
    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->MUTI_WINDOW_STATUS:Ljava/lang/String;

    .line 136
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup$1;

    invoke-direct {v3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$1;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v3, Lcn/nubia/commonui/widget/NubiaMorePopup$2;

    invoke-direct {v3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$2;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    .line 105
    iput-object v1, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    .line 106
    iput-wide v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mLastClickTime:J

    .line 107
    new-instance v3, Landroid/widget/PopupWindow;

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    .line 108
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 110
    iget-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 111
    iget-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 112
    iget-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 113
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ebd70a4    # 0.37f

    const v7, 0x3e8f5c29    # 0.28f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 114
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e570a3d    # 0.21f

    const v8, 0x3f147ae1    # 0.58f

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 115
    invoke-direct/range {p0 .. p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/Button;

    .line 116
    invoke-direct/range {p0 .. p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/Button;

    .line 117
    invoke-direct/range {p0 .. p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v6, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v4, [Ljava/lang/Object;

    .line 119
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v2

    new-array v11, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v11, v2

    const-string v7, "setLayoutInScreenEnabled"

    .line 118
    invoke-static/range {v6 .. v11}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v12, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v2

    const-string v13, "setLayoutInScreenEnabled"

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 121
    invoke-static/range {v12 .. v17}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    :goto_0
    iget-object v1, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    const-string v1, "android.view.WindowManagerGlobal"

    const-string v2, "getWindowManagerService"

    .line 126
    invoke-static {v1, v2, v4, v4}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mWindowManager:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/MorePopupRelativeLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    return-object p0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/Button;
    .locals 2

    .line 499
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 500
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    const v1, 0x7f10004e

    .line 501
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060091

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 503
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const p1, 0x7f080160

    .line 504
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 4

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 454
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 455
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0701a3

    .line 457
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 471
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 472
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 474
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 479
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0701b2

    .line 480
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0701ac

    .line 481
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 483
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/Button;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createContainer()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    .line 284
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    .line 285
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createListView()V

    return-void
.end method

.method private createContentView()V
    .locals 2

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 228
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 229
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 230
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 231
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 236
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    .line 237
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 238
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 239
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 241
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    return-void
.end method

.method private createContentView(Z)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 246
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 247
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initView()V

    .line 249
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContainer()V

    .line 250
    iget-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createPopupWindow(Z)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 255
    :goto_0
    iget-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x50

    goto :goto_1

    :cond_1
    const/16 p1, 0x30

    .line 256
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 257
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 258
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {p1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 259
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 260
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {p1, p0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    return-void
.end method

.method private createListView()V
    .locals 3

    .line 264
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mAdapter:Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    .line 265
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$5;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$5;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private createPopupWindow(Z)V
    .locals 5

    .line 311
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 312
    new-instance p1, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;)V

    .line 315
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 319
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 325
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701ea

    .line 327
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 329
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 330
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    invoke-virtual {p1, v0, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 6

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 410
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 411
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 413
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result p1

    if-nez p1, :cond_0

    .line 414
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0701a3

    .line 415
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 416
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 419
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0701e8

    .line 420
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07019a

    .line 421
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v5

    if-le v3, v5, :cond_1

    .line 424
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v3, v3, v4

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getAbsScreenHeight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 426
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    aget v3, v3, v4

    .line 428
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 429
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 430
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v4, v2

    .line 431
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 433
    :cond_2
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 436
    :goto_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0701a2

    .line 441
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 442
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 443
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 447
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/Button;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getAbsScreenHeight()I
    .locals 7

    .line 492
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 493
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mWindowManager:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v4, 0x1

    aput-object v0, v5, v4

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v3

    const-class v2, Landroid/graphics/Point;

    aput-object v2, v6, v4

    const-string v2, "getInitialDisplaySize"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 495
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method private getInitHeight()I
    .locals 3

    .line 564
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 567
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 570
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 572
    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method private getPopupWindowInfo(Landroid/view/View;I)Z
    .locals 10

    .line 516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 517
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 518
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 519
    iget v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 522
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 523
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x1

    .line 525
    aget v5, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, p2

    if-gez v1, :cond_0

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 531
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 532
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p2

    invoke-direct {v7, v5, v6, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 533
    invoke-virtual {p1, v7, v4}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 534
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 537
    :cond_0
    aget p1, v3, v4

    sub-int/2addr p1, v2

    add-int/2addr p1, p2

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private getScreenHeight()I
    .locals 3

    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 348
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 349
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 350
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 351
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0
.end method

.method private getScreenWidth()I
    .locals 3

    .line 358
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 362
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 363
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 365
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 366
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v0
.end method

.method private initView()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f0c005e

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    .line 294
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f09010b

    .line 295
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 296
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f09010e

    .line 297
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f090107

    .line 299
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f090109

    .line 301
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 302
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f09010d

    .line 303
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    .line 304
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f090106

    .line 305
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContainer:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    const v1, 0x7f09010a

    .line 307
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    return-void
.end method

.method private isMultiScreenOpen()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->MUTI_WINDOW_STATUS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isPortrait()Z
    .locals 2

    .line 166
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isMultiScreenOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 551
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 553
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 554
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 557
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 560
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private setViewBackgroundColor(Landroid/view/View;)V
    .locals 2

    .line 402
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009b

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 8

    .line 578
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 583
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 586
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    const/4 v2, 0x0

    const-string v3, "translationY"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    new-array v7, v6, [F

    int-to-float v0, v0

    aput v0, v7, v5

    aput v2, v7, v4

    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    .line 590
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    new-array v7, v6, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v7, v5

    aput v2, v7, v4

    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    const-wide/16 v1, 0xc8

    .line 593
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 594
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v6, [I

    .line 596
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 597
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 598
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$6;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$6;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x99
    .end array-data
.end method

.method private updatePopupWindow(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/Button;

    .line 378
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getScreenHeight()I

    move-result p1

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getInitHeight()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 379
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 382
    :cond_0
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/Button;

    .line 388
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 389
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    move p1, v0

    .line 391
    :goto_0
    invoke-static {p1}, Lcn/nubia/commonui/util/UiUtils;->isFullScreenWindow(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcn/nubia/commonui/util/UiUtils;->isImmersedStatusBar(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 392
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_1

    .line 395
    :cond_2
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 221
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 222
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    return-void
.end method

.method public initItemsState([Ljava/lang/CharSequence;)V
    .locals 3

    .line 744
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v0, 0x0

    .line 745
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 746
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public notifyDataChange()V
    .locals 4

    .line 751
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 752
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setImageView(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 153
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    .line 154
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method

.method public show()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView()V

    .line 182
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x50

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 184
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$3;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 204
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->createContentView(Z)V

    .line 205
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 207
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup$4;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$4;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 7

    .line 611
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mIsOnTop:Z

    const/4 v1, 0x0

    const-string v2, "translationY"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    new-array v6, v5, [F

    aput v1, v6, v4

    .line 617
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v6, v3

    .line 616
    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    new-array v6, v5, [F

    aput v1, v6, v4

    .line 620
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v6, v3

    .line 619
    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x96

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 623
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v5, [I

    .line 624
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 625
    invoke-virtual {v6, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 626
    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$7;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup$7;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 634
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaMorePopup$8;

    invoke-direct {v1, p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$8;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 640
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method
