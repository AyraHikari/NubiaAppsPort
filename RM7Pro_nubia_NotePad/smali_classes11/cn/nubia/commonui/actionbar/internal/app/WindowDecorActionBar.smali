.class public Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
.super Lcn/nubia/commonui/actionbar/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;,
        Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

.field private mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mIsCloseAnim:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedHideSplitView:Z

.field private mNowShowing:Z

.field private mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    const-class v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;-><init>()V

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 109
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 128
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNeedHideSplitView:Z

    .line 129
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    .line 131
    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 133
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 138
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 146
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 179
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 187
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 196
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 198
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 200
    if-nez p2, :cond_0

    .line 201
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 203
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 128
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNeedHideSplitView:Z

    .line 129
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    .line 131
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 133
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 138
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 146
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 179
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 187
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 206
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 207
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBar;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 128
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNeedHideSplitView:Z

    .line 129
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    .line 131
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 133
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 138
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 146
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 179
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 187
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$3;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 216
    sget-boolean v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 824
    if-eqz p2, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 827
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 506
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 507
    return-void
.end method

.method private configureTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 603
    move-object v3, p1

    check-cast v3, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    .line 604
    .local v3, "tabi":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    move-result-object v0

    .line 606
    .local v0, "callback":Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 607
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 611
    :cond_0
    invoke-virtual {v3, p2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 612
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 614
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 615
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 616
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 367
    .local v0, "tabScroller":Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 381
    :goto_1
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 372
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 374
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 379
    :cond_2
    :goto_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTabContainer(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 377
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 307
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 309
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 308
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 309
    check-cast p1, Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getWrapper()Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 311
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 776
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 777
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 780
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 782
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 13
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 221
    sget v7, Lcn/nubia/commonui/R$id;->decor_content_parent:I

    .line 222
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .line 223
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_0

    .line 224
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v7, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 226
    :cond_0
    sget v7, Lcn/nubia/commonui/R$id;->action_bar:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 227
    sget v7, Lcn/nubia/commonui/R$id;->action_context_bar:I

    .line 228
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 229
    sget v7, Lcn/nubia/commonui/R$id;->action_bar_container:I

    .line 230
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 232
    sget v7, Lcn/nubia/commonui/R$id;->split_action_bar:I

    .line 233
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 235
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-nez v7, :cond_2

    .line 237
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " can only be used "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "with a compatible window decor layout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 245
    :cond_2
    const-string v7, "splitActionBarWhenNarrow"

    .line 246
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 247
    .local v6, "splitWhenNarrow":Z
    const/4 v5, 0x0

    .line 249
    .local v5, "splitActionBar":Z
    if-eqz v6, :cond_3

    .line 250
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcn/nubia/commonui/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 254
    :cond_3
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v7, :cond_4

    .line 255
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-interface {v7, v10}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 256
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7, v5}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 257
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7, v6}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 259
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v7, v10}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 260
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 261
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 264
    :cond_4
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 273
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/commonui/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 274
    iput v8, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 282
    :goto_0
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 283
    .local v2, "current":I
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_b

    move v4, v8

    .line 284
    .local v4, "homeAsUp":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 285
    iput-boolean v8, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 288
    :cond_5
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 289
    .local v1, "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v4, :cond_c

    :cond_6
    move v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 290
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v7

    invoke-direct {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 292
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v12, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    invoke-virtual {v7, v10, v11, v12, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcn/nubia/commonui/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 295
    invoke-virtual {p0, v8}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 297
    :cond_7
    sget v7, Lcn/nubia/commonui/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 299
    .local v3, "elevation":I
    if-eqz v3, :cond_8

    .line 300
    int-to-float v7, v3

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 302
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    return-void

    .line 276
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_9
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v7}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_3
    iput v7, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    goto :goto_0

    :cond_a
    move v7, v9

    goto :goto_3

    .restart local v2    # "current":I
    :cond_b
    move v4, v9

    .line 283
    goto :goto_1

    .restart local v1    # "abp":Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_c
    move v7, v9

    .line 289
    goto :goto_2
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 337
    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 338
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 339
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTabContainer(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 344
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 345
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v3, :cond_0

    .line 346
    if-eqz v0, :cond_3

    .line 347
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 355
    :cond_0
    :goto_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 356
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 357
    return-void

    .line 341
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTabContainer(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    .line 342
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 344
    goto :goto_1

    .line 352
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 355
    goto :goto_3

    :cond_5
    move v1, v2

    .line 356
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 750
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 751
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 752
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 755
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 757
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v4, 0x0

    .line 835
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 838
    .local v0, "shown":Z
    if-eqz v0, :cond_2

    .line 839
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_1

    .line 840
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 841
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->doShow(Z)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNeedHideSplitView:Z

    if-eqz v1, :cond_0

    .line 843
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNeedHideSplitView:Z

    .line 844
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->hideSplitView()V

    goto :goto_0

    .line 847
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 848
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 849
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 412
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    .prologue
    .line 622
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V

    .line 623
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;IZ)V

    .line 628
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 642
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 643
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;IZ)V

    .line 644
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->configureTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;I)V

    .line 645
    if-eqz p3, :cond_0

    .line 646
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    .line 648
    :cond_0
    return-void
.end method

.method public addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 632
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 633
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->addTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)V

    .line 634
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->configureTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;I)V

    .line 635
    if-eqz p2, :cond_0

    .line 636
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    .line 638
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 3
    .param p1, "toActionMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 982
    if-eqz p1, :cond_0

    .line 983
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->showForActionMode()V

    .line 988
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-interface {v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->animateToVisibility(I)V

    .line 990
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 993
    return-void

    .line 985
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 988
    goto :goto_1

    .line 990
    :cond_2
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->collapseActionView()V

    .line 1054
    const/4 v0, 0x1

    .line 1056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 387
    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 388
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 389
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .line 391
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 420
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 429
    :cond_0
    return-void

    .line 423
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 425
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 426
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 427
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 8
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 930
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 931
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 935
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setActionBarShowOrHide(Z)V

    .line 938
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_6

    sget-boolean v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_6

    .line 940
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 941
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 942
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 943
    .local v1, "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 944
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 945
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 946
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 947
    aget v4, v3, v7

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 949
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 950
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 951
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 952
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 953
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 954
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 955
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 954
    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 957
    :cond_3
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 958
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 959
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 960
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 961
    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 960
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 963
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0005

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 965
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 966
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 967
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 968
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 972
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "endingY":F
    :goto_1
    return-void

    .line 965
    .restart local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .restart local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .restart local v2    # "endingY":F
    :cond_5
    const-wide/16 v4, 0xfa

    goto :goto_0

    .line 970
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "endingY":F
    :cond_6
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_1

    .line 945
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 9
    .param p1, "fromSystem"    # Z

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 861
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 862
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 864
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 867
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setActionBarShowOrHide(Z)V

    .line 871
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_7

    sget-boolean v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_7

    .line 874
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 875
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 876
    .local v2, "startingY":F
    if-eqz p1, :cond_2

    .line 877
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 878
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 879
    aget v4, v3, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 881
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 882
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 883
    .local v1, "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 884
    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 885
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 886
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 887
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 888
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 889
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 891
    :cond_3
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v4, v5, :cond_4

    .line 893
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 894
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 895
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 897
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 899
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 907
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 908
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 909
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 924
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "startingY":F
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_5

    .line 925
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 927
    :cond_5
    return-void

    .line 899
    .restart local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .restart local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .restart local v2    # "startingY":F
    :cond_6
    const-wide/16 v4, 0xfa

    goto :goto_0

    .line 911
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "startingY":F
    :cond_7
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 912
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 913
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 914
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 916
    :cond_8
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_9

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v4, v5, :cond_9

    .line 918
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 919
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 920
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 922
    :cond_9
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_1

    .line 877
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 739
    return-void
.end method

.method public getActionBarContextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getActionBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextDisplayMode()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1415
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1411
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1413
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1397
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1403
    :cond_0
    :goto_0
    return v0

    .line 1399
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1401
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSplitActionBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1458
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 996
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 997
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 998
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 999
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    sget v3, Lcn/nubia/commonui/R$attr;->actionBarWidgetTheme:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1001
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1003
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 1004
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 1010
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 1007
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    if-nez v0, :cond_0

    .line 1505
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 1507
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1512
    :try_start_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1513
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 1514
    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    .line 1513
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1516
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 1517
    .local v3, "uiOptions":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1518
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.UI_OPTIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1525
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "uiOptions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NubiaWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 1523
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1522
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 770
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 772
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 785
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 786
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 787
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 789
    :cond_0
    return-void
.end method

.method public hideSplitView()V
    .locals 2

    .prologue
    .line 855
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 858
    :cond_0
    return-void
.end method

.method public isCloseAnim()Z
    .locals 1

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    return v0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 978
    .local v0, "height":I
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 331
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 332
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 1044
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 394
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 395
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->cleanupTabs()V

    .line 496
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 416
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public removeTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    .prologue
    .line 657
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 658
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 662
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    .line 668
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 669
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 670
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    .line 671
    .local v2, "removedTab":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_2

    .line 672
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 675
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 676
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 677
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 668
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 680
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 681
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    .prologue
    const/4 v2, -0x1

    .line 688
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 689
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :goto_0
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 725
    .end local p1    # "tab":Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    :cond_0
    :goto_1
    return-void

    .restart local p1    # "tab":Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    :cond_1
    move v1, v2

    .line 689
    goto :goto_0

    .line 695
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 696
    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 699
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 705
    .local v0, "trans":Landroid/support/v4/app/FragmentTransaction;
    :goto_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v1, p1, :cond_5

    .line 706
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3

    .line 707
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;->onTabReselected(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 708
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 722
    .end local p1    # "tab":Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 702
    .end local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    .restart local p1    # "tab":Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_2

    .line 711
    :cond_5
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_6
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 713
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_7

    .line 714
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;->onTabUnselected(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 716
    :cond_7
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    .end local p1    # "tab":Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    .line 717
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3

    .line 718
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSelectedTab:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar$TabListener;->onTabSelected(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_3
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 538
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    return-void
.end method

.method public setCloseAnim(Z)V
    .locals 0
    .param p1, "mIsCloseAnim"    # Z

    .prologue
    .line 1494
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mIsCloseAnim:Z

    .line 1495
    return-void
.end method

.method public setContextDisplayMode(I)V
    .locals 0
    .param p1, "mContextDisplayMode"    # I

    .prologue
    .line 172
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 173
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 433
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    .line 434
    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 433
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 435
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1379
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1380
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    .prologue
    .line 1384
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1386
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1499
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1501
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 449
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 451
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 523
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 526
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 527
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 530
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 531
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 534
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 535
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 461
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 463
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 444
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 445
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 455
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 457
    return-void

    .line 455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 439
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 440
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 319
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 320
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 323
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 814
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 820
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 793
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 799
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 800
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1035
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 1036
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1030
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1031
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1025
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 1026
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1020
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 468
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1463
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1464
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1468
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1469
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1391
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcn/nubia/commonui/actionbar/internal/app/NavItemSelectedListener;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 1393
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1477
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1478
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1482
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1483
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1426
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1427
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1434
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1435
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1439
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1440
    packed-switch p1, :pswitch_data_1

    .line 1450
    :cond_1
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    if-ne p1, v6, :cond_2

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1452
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_3

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1454
    return-void

    .line 1429
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1430
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    .line 1431
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1442
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1443
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1444
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1445
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1446
    iput v5, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1450
    goto :goto_2

    :cond_3
    move v2, v3

    .line 1452
    goto :goto_3

    .line 1427
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1440
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setNeedHideSplitView(Z)V
    .locals 0
    .param p1, "needHideSplitView"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mNeedHideSplitView:Z

    .line 177
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->selectTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    .line 492
    :goto_0
    return-void

    .line 486
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 406
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 409
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 546
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 549
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 542
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContainerView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 543
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 478
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 519
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 520
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 510
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 511
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 515
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 516
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 744
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 745
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 747
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 762
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 764
    :cond_0
    return-void
.end method

.method public startActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 576
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 577
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 578
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Landroid/content/Context;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V

    .line 580
    .local v0, "mode":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 582
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 583
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 584
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 587
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mSplitView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 594
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    .line 595
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 596
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->mActionMode:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 599
    .end local v0    # "mode":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
