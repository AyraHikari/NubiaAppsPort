.class public Lcn/nubia/notepad/view/NubiaMorePopupMenu;
.super Ljava/lang/Object;
.source "NubiaMorePopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarObserver;,
        Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;,
        Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;,
        Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarHandler;
    }
.end annotation


# static fields
.field private static final ENTER_PART_DURATION_TIME:J = 0x12cL

.field private static final EXIT_TOTAL_DURATION_TIME:J = 0x12cL

.field private static final NOTEPAD_EDIT_LABEL_MAX_COUNT:I = 0x4

.field private static final NOTEPAD_LIST_LABEL_MAX_COUNT:I = 0x6

.field private static final NOTEPAD_NAVI_BAR_CHANGED:I = 0x1


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field final mHandler:Landroid/os/Handler;

.field private mIsHome:Z

.field private mIsLeftHandMode:Z

.field private mLastClickTime:J

.field private mLeftBottomView:Landroid/view/View;

.field private mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

.field private mListener:Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;

.field private mMiddleBottomView:Landroid/view/View;

.field private mNaviBarObserver:Landroid/database/ContentObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mRightBottomView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "isHome"    # Z
    .param p6, "isLeftHandMode"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarHandler;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarHandler;-><init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V

    iput-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    .line 106
    iput-boolean p5, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mIsHome:Z

    .line 107
    iput-boolean p6, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mIsLeftHandMode:Z

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mLastClickTime:J

    .line 109
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    .line 110
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 112
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 113
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 114
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 115
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Lcn/nubia/notepad/view/NubiaMorePopupMenu$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$1;-><init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mBackgroundView:Landroid/view/View;

    .line 128
    invoke-direct {p0, p5}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->initView(Z)V

    .line 129
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->registerContentObserver()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "isHome"    # Z
    .param p5, "isLeftHandMode"    # Z

    .prologue
    .line 99
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZZ)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isHome"    # Z
    .param p4, "isLeftHandMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZZ)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHome"    # Z
    .param p3, "isLeftHandMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZZ)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListener:Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isInMutilWindowsMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mIsHome:Z

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/widget/PopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->startExitAnimation(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method private createContainer()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;-><init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method private createContentView()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->createContainer()V

    .line 178
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->createPopupWindow()V

    .line 181
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    return-void
.end method

.method private createPopupWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 234
    new-instance v0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;

    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;-><init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/content/Context;)V

    .line 236
    .local v0, "container":Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v1, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 240
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    :cond_0
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "parent":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 244
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 247
    :cond_1
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v3, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NubiaMorePopupViewContainer;->setFocusableInTouchMode(Z)V

    .line 250
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method private initView(Z)V
    .locals 7
    .param p1, "isHome"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030060

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    .line 214
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0f00bf

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    iput-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    .line 215
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0f00c2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mLeftBottomView:Landroid/view/View;

    .line 216
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0f00c4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mRightBottomView:Landroid/view/View;

    .line 217
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0f00c3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mMiddleBottomView:Landroid/view/View;

    .line 219
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 220
    .local v2, "resource":Landroid/content/res/Resources;
    const v3, 0x7f0c00b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 222
    .local v0, "listItemHeight":I
    if-eqz p1, :cond_1

    const/4 v1, 0x6

    .line 223
    .local v1, "maxLine":I
    :goto_1
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    mul-int v4, v1, v0

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->setListViewMaxHeight(I)V

    .line 225
    if-eqz p1, :cond_2

    .line 226
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mLeftBottomView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_2
    return-void

    .line 210
    .end local v0    # "listItemHeight":I
    .end local v1    # "maxLine":I
    .end local v2    # "resource":Landroid/content/res/Resources;
    :cond_0
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030056

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 222
    .restart local v0    # "listItemHeight":I
    .restart local v2    # "resource":Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 229
    .restart local v1    # "maxLine":I
    :cond_2
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mMiddleBottomView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private isDoubleClick()Z
    .locals 6

    .prologue
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    .local v0, "time":J
    iget-wide v2, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 343
    const/4 v2, 0x1

    .line 346
    :goto_0
    return v2

    .line 345
    :cond_0
    iput-wide v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mLastClickTime:J

    .line 346
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInMutilWindowsMode(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ss_multi_window_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 444
    .local v0, "isMWin":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 407
    new-instance v0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarObserver;

    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 408
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_keys_navigationbar"

    .line 409
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 408
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    return-void
.end method

.method private startEntryAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x2

    .line 258
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mBackgroundView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 260
    .local v1, "backgroudAlpha":Landroid/animation/Animator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 262
    iget-object v3, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 264
    .local v2, "container":Landroid/animation/Animator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 266
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 267
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 268
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 269
    return-void

    .line 258
    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
    .end array-data

    .line 262
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 4
    .param p1, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    .line 272
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mBackgroundView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 274
    .local v0, "backgroudAlpha":Landroid/animation/Animator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 275
    new-instance v1, Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$4;-><init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 298
    return-void

    .line 272
    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mNaviBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mNaviBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 169
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->unRegisterContentObserver()V

    .line 173
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public refreshView()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mDropDownAnchorView:Landroid/view/View;

    .line 134
    return-void
.end method

.method public setListAdapter(Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    return-void
.end method

.method public setOnClickListenerForLeftBottomTitle(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 377
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mLeftBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void
.end method

.method public setOnClickListenerForMiddleBottomTitle(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 395
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mMiddleBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    return-void
.end method

.method public setOnClickListenerForRightBottomTitle(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 386
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-void
.end method

.method public setOnItemClickListenerForListView(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 359
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 360
    return-void
.end method

.method public setOnItemLongClickListenerForListView(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 368
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListView:Lcn/nubia/notepad/view/NotepadListMoveDialogListView;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 369
    return-void
.end method

.method public setOnPopupWindowDismissedListener(Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;

    .prologue
    .line 399
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mListener:Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;

    .line 400
    return-void
.end method

.method public setRightBottomEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 351
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->createContentView()V

    .line 143
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mDropDownAnchorView:Landroid/view/View;

    new-instance v1, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;-><init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 158
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mIsHome:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 161
    invoke-direct {p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->startEntryAnimation()V

    goto :goto_0
.end method
