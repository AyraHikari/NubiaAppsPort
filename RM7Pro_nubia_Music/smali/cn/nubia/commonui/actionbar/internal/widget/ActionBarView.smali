.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.super Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;,
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;,
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static final TITLEVIEW_ALPHA_NORMAL:F = 0.93f

.field private static final TITLEVIEW_ALPHA_PRESSED:F = 0.3f


# instance fields
.field private mActionBarTopShow:Z

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 133
    sget v0, Lcn/nubia/commonui/R$string;->action_bar_up_description:I

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 134
    iput-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 138
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 162
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 166
    sget-object v0, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v1, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 171
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_navigationMode:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 173
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 174
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 175
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_logo:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 176
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_icon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 180
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_homeLayout:I

    sget v4, Lcn/nubia/commonui/R$layout;->abc_action_bar_home:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 183
    sget v0, Lcn/nubia/commonui/R$layout;->abc_action_bar_up_container:I

    invoke-virtual {v3, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 185
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {v3, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 188
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    new-instance v5, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$3;

    invoke-direct {v5, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$3;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(Z)V

    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    invoke-virtual {v4, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 232
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 234
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 236
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_progressBarStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressStyle:I

    .line 238
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_indeterminateProgressStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 241
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_progressBarPadding:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 243
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_itemPadding:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    .line 246
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 249
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 251
    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v3, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 253
    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 254
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 257
    :cond_1
    sget v0, Lcn/nubia/commonui/R$styleable;->ActionBar_height:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    .line 259
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    .line 264
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 266
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 268
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 269
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 271
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;ZZ)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->isTouchInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 670
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 682
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 683
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 684
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 687
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$string;->action_bar_home_subtitle_description_format:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_0
    :goto_1
    return-object v0

    .line 673
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$string;->action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$string;->action_bar_home_description_format:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 508
    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 510
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 513
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 515
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 934
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 935
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 936
    sget v1, Lcn/nubia/commonui/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 938
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v1, Lcn/nubia/commonui/R$id;->action_bar_title:I

    .line 939
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 940
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v1, Lcn/nubia/commonui/R$id;->action_bar_subtitle:I

    .line 941
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 943
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 946
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 953
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 954
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 959
    :cond_3
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 960
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 961
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 962
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 964
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private isTouchInView(Landroid/view/View;FF)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 278
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 279
    aget v3, v2, v0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 281
    aget v2, v2, v1

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 283
    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v5, 0x14

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_0

    int-to-float v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    int-to-float v2, v4

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    move v0, v1

    .line 284
    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1

    .prologue
    .line 627
    if-eqz p2, :cond_0

    .line 628
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 631
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 645
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 641
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 644
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 587
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 588
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 594
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 599
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 600
    return-void

    :cond_3
    move v0, v1

    .line 593
    goto :goto_0

    .line 594
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    .line 652
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 655
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 656
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 527
    :goto_0
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 530
    :cond_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 911
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1446
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .prologue
    .line 1451
    if-nez p1, :cond_0

    .line 1452
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1454
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 1999
    const/4 v0, 0x0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 903
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 353
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcn/nubia/commonui/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 354
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method public initProgress()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcn/nubia/commonui/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 344
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 345
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 987
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v0

    .line 991
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 992
    if-eqz v2, :cond_0

    .line 996
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move v1, v0

    .line 997
    :goto_1
    if-ge v1, v3, :cond_0

    .line 998
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 999
    const/4 v0, 0x1

    goto :goto_0

    .line 997
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 296
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    :cond_0
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 301
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    .line 305
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v0, :cond_2

    .line 306
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_3

    .line 312
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 317
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 333
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 334
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 336
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 338
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 916
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 918
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 919
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 921
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 924
    if-eq v0, p0, :cond_1

    .line 925
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 926
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 931
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1251
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 1253
    if-gtz v4, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 1259
    if-eqz v5, :cond_8

    const/4 v0, 0x1

    move v12, v0

    .line 1260
    :goto_1
    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v8

    .line 1265
    :goto_2
    if-eqz v5, :cond_a

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v6, v0

    .line 1266
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    .line 1268
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 1270
    :goto_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1271
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    move v7, v1

    .line 1273
    :goto_5
    const/4 v1, 0x0

    .line 1274
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v2, v9, :cond_1e

    .line 1275
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    const/16 v9, 0x8

    if-eq v2, v9, :cond_d

    .line 1281
    const/4 v0, 0x0

    move v9, v0

    .line 1290
    :goto_6
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-static {v6, v9, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v6

    .line 1292
    invoke-static {v0, v9, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    .line 1294
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1295
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v0, :pswitch_data_0

    .line 1320
    :cond_2
    :goto_7
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 1321
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v5, :cond_10

    const/4 v11, 0x1

    :goto_8
    move-object v6, p0

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1324
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v5, :cond_11

    const/4 v11, 0x1

    :goto_9
    move-object v6, p0

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionMenuChild(Landroid/view/View;IIIZ)I

    .line 1328
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v12

    add-int/2addr v8, v0

    .line 1335
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1336
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 1337
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v5, :cond_12

    const/4 v11, 0x1

    :goto_a
    move-object v6, p0

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1339
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1340
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v12

    add-int/2addr v8, v0

    .line 1343
    :cond_4
    const/4 v0, 0x0

    .line 1344
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 1345
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object v9, v0

    .line 1350
    :goto_b
    if-eqz v9, :cond_7

    .line 1351
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v10

    .line 1352
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1353
    instance-of v1, v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    if-eqz v1, :cond_14

    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    move-object v4, v0

    .line 1355
    :goto_c
    if-eqz v4, :cond_15

    iget v0, v4, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    .line 1357
    :goto_d
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1359
    const/4 v3, 0x0

    .line 1360
    const/4 v1, 0x0

    .line 1361
    if-eqz v4, :cond_1c

    .line 1362
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v1

    invoke-static {v2, v1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v3

    .line 1363
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v1

    mul-int/2addr v1, v12

    add-int/2addr v8, v1

    .line 1364
    iget v2, v4, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->topMargin:I

    .line 1365
    iget v1, v4, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->bottomMargin:I

    move v6, v1

    move v7, v2

    move v2, v8

    .line 1368
    :goto_e
    const v1, 0x800007

    and-int/2addr v1, v0

    .line 1371
    const/4 v4, 0x1

    if-ne v1, v4, :cond_19

    .line 1372
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v11

    div-int/lit8 v4, v4, 0x2

    .line 1373
    if-eqz v5, :cond_17

    .line 1374
    add-int v8, v4, v11

    .line 1376
    if-le v8, v3, :cond_16

    .line 1377
    const/4 v1, 0x5

    .line 1394
    :cond_5
    :goto_f
    const/4 v4, 0x0

    .line 1395
    invoke-static {v1, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    move v2, v4

    .line 1407
    :goto_10
    and-int/lit8 v1, v0, 0x70

    .line 1409
    if-nez v0, :cond_6

    .line 1410
    const/16 v0, 0x10

    move v1, v0

    .line 1413
    :cond_6
    const/4 v0, 0x0

    .line 1414
    sparse-switch v1, :sswitch_data_0

    .line 1429
    :goto_11
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1430
    add-int v4, v2, v1

    .line 1431
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 1430
    invoke-virtual {v9, v2, v0, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 1432
    invoke-static {v3, v1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    .line 1435
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1437
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1438
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1439
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 1438
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1259
    :cond_8
    const/4 v0, -0x1

    move v12, v0

    goto/16 :goto_1

    .line 1260
    :cond_9
    sub-int v0, p4, p2

    .line 1261
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    goto/16 :goto_2

    .line 1265
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v0

    move v6, v0

    goto/16 :goto_3

    .line 1268
    :cond_b
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_4

    .line 1271
    :cond_c
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_5

    .line 1283
    :cond_d
    if-eqz v7, :cond_1e

    .line 1284
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b()I

    move-result v0

    move v9, v0

    goto/16 :goto_6

    .line 1299
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    if-eqz v0, :cond_2

    .line 1300
    if-eqz v7, :cond_e

    .line 1301
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v2, v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    .line 1303
    :cond_e
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 1305
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    goto/16 :goto_7

    .line 1309
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    .line 1310
    if-eqz v7, :cond_f

    .line 1311
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v2, v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    .line 1312
    :cond_f
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 1314
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    goto/16 :goto_7

    .line 1321
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1324
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 1337
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 1346
    :cond_13
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1d

    .line 1348
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object v9, v0

    goto/16 :goto_b

    .line 1353
    :cond_14
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_c

    .line 1355
    :cond_15
    const v0, 0x800013

    goto/16 :goto_d

    .line 1378
    :cond_16
    if-ge v4, v2, :cond_5

    .line 1379
    const/4 v1, 0x3

    goto/16 :goto_f

    .line 1383
    :cond_17
    add-int v8, v4, v11

    .line 1384
    if-ge v4, v3, :cond_18

    .line 1385
    const/4 v1, 0x3

    goto/16 :goto_f

    .line 1386
    :cond_18
    if-le v8, v2, :cond_5

    .line 1387
    const/4 v1, 0x5

    goto/16 :goto_f

    .line 1390
    :cond_19
    if-nez v0, :cond_5

    .line 1391
    const v1, 0x800003

    goto/16 :goto_f

    .line 1397
    :pswitch_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v11

    div-int/lit8 v1, v1, 0x2

    move v2, v1

    .line 1398
    goto/16 :goto_10

    .line 1400
    :pswitch_5
    if-eqz v5, :cond_1a

    move v1, v2

    :goto_12
    move v2, v1

    .line 1401
    goto/16 :goto_10

    :cond_1a
    move v1, v3

    .line 1400
    goto :goto_12

    .line 1403
    :pswitch_6
    if-eqz v5, :cond_1b

    sub-int v1, v3, v11

    :goto_13
    move v2, v1

    goto/16 :goto_10

    :cond_1b
    sub-int v1, v2, v11

    goto :goto_13

    .line 1416
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    .line 1417
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1418
    sub-int v0, v1, v0

    .line 1419
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_11

    .line 1422
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v7

    .line 1423
    goto/16 :goto_11

    .line 1425
    :sswitch_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1426
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    goto/16 :goto_11

    :cond_1c
    move v6, v1

    move v7, v3

    move v3, v2

    move v2, v8

    goto/16 :goto_e

    :cond_1d
    move-object v9, v0

    goto/16 :goto_b

    :cond_1e
    move v9, v1

    goto/16 :goto_6

    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1395
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1414
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 19

    .prologue
    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildCount()I

    move-result v13

    .line 1008
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIsCollapsible:Z

    if-eqz v1, :cond_6

    .line 1009
    const/4 v2, 0x0

    .line 1010
    const/4 v1, 0x0

    move/from16 v18, v1

    move v1, v2

    move/from16 v2, v18

    :goto_0
    if-ge v2, v13, :cond_2

    .line 1011
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1012
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 1013
    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_1

    .line 1015
    add-int/lit8 v1, v1, 0x1

    .line 1010
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1020
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1022
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 1023
    add-int/lit8 v1, v1, 0x1

    .line 1020
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1027
    :cond_4
    if-nez v1, :cond_6

    .line 1029
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1246
    :cond_5
    :goto_2
    return-void

    .line 1034
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1035
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_7

    .line 1036
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1042
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1043
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_8

    .line 1044
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 1051
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    if-ltz v1, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move v3, v1

    .line 1054
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    add-int v15, v1, v2

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    .line 1057
    sub-int v10, v3, v15

    .line 1058
    const/high16 v4, -0x80000000

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1060
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1063
    sub-int v1, v14, v1

    sub-int v6, v1, v2

    .line 1064
    div-int/lit8 v5, v6, 0x2

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1068
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_13

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    .line 1071
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 1074
    :goto_5
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1076
    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v9, :cond_15

    .line 1077
    const/high16 v4, -0x80000000

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1092
    :goto_6
    invoke-virtual {v2, v4, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1094
    const/4 v4, 0x0

    .line 1095
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-eq v9, v11, :cond_9

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v9, v11, :cond_a

    :cond_9
    if-eqz v1, :cond_25

    .line 1097
    :cond_a
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v4

    .line 1098
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a()I

    move-result v2

    add-int/2addr v2, v4

    .line 1099
    const/4 v9, 0x0

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1100
    const/4 v9, 0x0

    sub-int v2, v6, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1103
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v9}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object/from16 v0, p0

    if-ne v9, v0, :cond_b

    .line 1104
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6, v8, v11}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1106
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 1107
    invoke-virtual {v9}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v5, v9

    .line 1106
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1110
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1111
    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_c

    .line 1112
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6, v7, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1114
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1115
    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v5, v8

    .line 1114
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1118
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_d

    .line 1119
    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v7, :pswitch_data_0

    :cond_d
    move v7, v6

    move v6, v2

    .line 1153
    :goto_8
    const/4 v1, 0x0

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object v12, v1

    .line 1161
    :goto_9
    if-eqz v12, :cond_10

    .line 1163
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1162
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1164
    instance-of v1, v2, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    if-eqz v1, :cond_19

    move-object v1, v2

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    move-object v11, v1

    .line 1167
    :goto_a
    const/4 v8, 0x0

    .line 1168
    const/4 v1, 0x0

    .line 1169
    if-eqz v11, :cond_e

    .line 1170
    iget v1, v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->leftMargin:I

    iget v8, v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v8, v1

    .line 1171
    iget v1, v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->topMargin:I

    iget v9, v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v9

    .line 1178
    :cond_e
    move-object/from16 v0, p0

    iget v9, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v9, :cond_1a

    .line 1179
    const/high16 v9, -0x80000000

    .line 1184
    :goto_b
    const/16 v16, 0x0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_f

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    .line 1185
    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_f
    sub-int v1, v10, v1

    .line 1184
    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1188
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v1, v10, :cond_1c

    const/high16 v1, 0x40000000    # 2.0f

    .line 1190
    :goto_c
    const/16 v17, 0x0

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_1d

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1191
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_d
    sub-int/2addr v10, v8

    .line 1190
    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1193
    if-eqz v11, :cond_1e

    iget v11, v11, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    :goto_e
    and-int/lit8 v11, v11, 0x7

    .line 1199
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_23

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_23

    .line 1201
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 1204
    :goto_f
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1205
    move/from16 v0, v16

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1204
    invoke-virtual {v12, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1207
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    sub-int/2addr v7, v1

    .line 1214
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    add-int v2, v7, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 1215
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 1217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_11

    .line 1218
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1219
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v6, v2

    .line 1218
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1222
    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v1, :cond_21

    .line 1223
    const/4 v2, 0x0

    .line 1224
    const/4 v1, 0x0

    move v3, v1

    :goto_10
    if-ge v3, v13, :cond_1f

    .line 1225
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1226
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 1227
    if-le v1, v2, :cond_22

    .line 1224
    :goto_11
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_10

    .line 1052
    :cond_12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_3

    .line 1068
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1071
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_5

    .line 1080
    :cond_15
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto/16 :goto_6

    .line 1121
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    if-eqz v7, :cond_d

    .line 1122
    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v1, v1, 0x2

    .line 1124
    :goto_12
    const/4 v7, 0x0

    sub-int/2addr v6, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1126
    const/4 v7, 0x0

    sub-int v1, v2, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    .line 1129
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1127
    invoke-virtual {v2, v7, v8}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measure(II)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v2

    .line 1131
    const/4 v7, 0x0

    sub-int/2addr v6, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1132
    const/4 v7, 0x0

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v6

    move v6, v2

    .line 1133
    goto/16 :goto_8

    .line 1122
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    goto :goto_12

    .line 1136
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_d

    .line 1137
    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v1, v1, 0x2

    .line 1139
    :goto_13
    const/4 v7, 0x0

    sub-int/2addr v6, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1141
    const/4 v7, 0x0

    sub-int v1, v2, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    .line 1144
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1142
    invoke-virtual {v2, v7, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 1146
    const/4 v7, 0x0

    sub-int/2addr v6, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1147
    const/4 v7, 0x0

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v6

    move v6, v2

    goto/16 :goto_8

    .line 1137
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    goto :goto_13

    .line 1156
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_24

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object v12, v1

    goto/16 :goto_9

    .line 1164
    :cond_19
    const/4 v1, 0x0

    move-object v11, v1

    goto/16 :goto_a

    .line 1181
    :cond_1a
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v9, v0, :cond_1b

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_b

    :cond_1b
    const/high16 v9, -0x80000000

    goto/16 :goto_b

    .line 1188
    :cond_1c
    const/high16 v1, -0x80000000

    goto/16 :goto_c

    :cond_1d
    move v10, v7

    .line 1191
    goto/16 :goto_d

    .line 1193
    :cond_1e
    const v11, 0x800013

    goto/16 :goto_e

    .line 1231
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1236
    :goto_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_20

    .line 1237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1240
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    .line 1241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v14, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1241
    invoke-virtual {v1, v2, v3}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 1233
    :cond_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    :cond_22
    move v1, v2

    goto/16 :goto_11

    :cond_23
    move v2, v10

    goto/16 :goto_f

    :cond_24
    move-object v12, v1

    goto/16 :goto_9

    :cond_25
    move v2, v5

    goto/16 :goto_7

    .line 1119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1476
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    .line 1478
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1480
    iget v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget v1, p1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->a:I

    .line 1483
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_0

    .line 1485
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1489
    :cond_0
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->b:Z

    if-eqz v0, :cond_1

    .line 1490
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1492
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1459
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1460
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1462
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 1465
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->a:I

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->b:Z

    .line 1470
    return-object v1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setActionBarShowOrHide(Z)V
    .locals 0

    .prologue
    .line 2004
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 2005
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .prologue
    .line 975
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 976
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContextView(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 972
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 534
    :goto_0
    if-eqz v0, :cond_0

    .line 535
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 537
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 538
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 540
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 541
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 544
    :cond_2
    return-void

    .line 533
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 1521
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1524
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1525
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1501
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 701
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v1, v0, :cond_6

    .line 703
    :goto_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 705
    and-int/lit8 v1, v0, 0x3f

    if-eqz v1, :cond_11

    .line 706
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 708
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 709
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_7

    move v1, v2

    .line 710
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(Z)V

    .line 717
    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 722
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    move v1, v2

    .line 725
    :goto_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v4, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 728
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 729
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_a

    .line 730
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    .line 736
    :cond_2
    :goto_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_b

    move v1, v2

    .line 737
    :goto_5
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_c

    move v4, v2

    .line 738
    :goto_6
    if-nez v1, :cond_d

    if-eqz v4, :cond_d

    move v4, v2

    .line 740
    :goto_7
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b(Z)V

    .line 746
    if-nez v1, :cond_3

    if-eqz v4, :cond_e

    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_e

    move v1, v3

    .line 748
    :goto_8
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 750
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 752
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_f

    .line 753
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 759
    :cond_4
    :goto_9
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 761
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_10

    .line 762
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 763
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 770
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->requestLayout()V

    .line 777
    :goto_b
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 778
    return-void

    .line 701
    :cond_6
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int/2addr v0, p1

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 709
    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 723
    goto :goto_2

    .line 725
    :cond_9
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 732
    :cond_a
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v1, v3

    .line 736
    goto :goto_5

    :cond_c
    move v4, v3

    .line 737
    goto :goto_6

    :cond_d
    move v4, v3

    .line 738
    goto :goto_7

    .line 746
    :cond_e
    const/16 v1, 0x8

    goto :goto_8

    .line 755
    :cond_f
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 765
    :cond_10
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 766
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 772
    :cond_11
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V
    .locals 1

    .prologue
    .line 869
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 870
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavItemSelectedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    .line 871
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 873
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setOnItemSelectedListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 875
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 883
    return-void
.end method

.method public setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 422
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .line 426
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 427
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 428
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 430
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 431
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 434
    :cond_1
    return-void

    .line 426
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 624
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 794
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 795
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 781
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 782
    if-eqz p1, :cond_1

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 784
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 786
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 788
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 787
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 790
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 810
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 811
    return-void

    .line 810
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 802
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 803
    if-eqz p1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 442
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 446
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 449
    :cond_1
    check-cast p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 450
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 451
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 453
    if-eqz v0, :cond_2

    .line 454
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 457
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-nez v0, :cond_3

    .line 458
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 460
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 461
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    sget v1, Lcn/nubia/commonui/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setId(I)V

    .line 462
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    .line 466
    :cond_3
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 469
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v0, :cond_5

    .line 470
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/commonui/R$bool;->action_bar_expanded_action_views_exclusive:I

    .line 471
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 470
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 473
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 474
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 475
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 476
    if-eqz v1, :cond_4

    if-eq v1, p0, :cond_4

    .line 477
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :goto_1
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    goto :goto_0

    .line 481
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 483
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    .line 483
    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 486
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 488
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 489
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 490
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 491
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 492
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 493
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 494
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v1, v3, :cond_6

    .line 495
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 497
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 501
    :cond_7
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1534
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 1537
    :cond_1
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 438
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 1513
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1514
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1515
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1516
    return-void

    .line 1514
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1508
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1509
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1510
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->a(I)V

    .line 1505
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1496
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 818
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 819
    if-eq p1, v0, :cond_2

    .line 820
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 821
    packed-switch v0, :pswitch_data_0

    .line 833
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 862
    :cond_1
    :goto_1
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 863
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->requestLayout()V

    .line 865
    :cond_2
    return-void

    .line 823
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 828
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-nez v0, :cond_3

    .line 836
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/commonui/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    .line 838
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    sget v1, Lcn/nubia/commonui/R$id;->action_bar_spinner:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setId(I)V

    .line 842
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/commonui/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    .line 844
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 847
    const/16 v1, 0x11

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 848
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_4

    .line 851
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 853
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavItemSelectedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setOnItemSelectedListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 854
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 857
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 833
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    .line 361
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 366
    :cond_0
    if-eqz p1, :cond_6

    .line 367
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->requestLayout()V

    .line 377
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 383
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_4

    .line 389
    if-nez p1, :cond_8

    .line 390
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 391
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$bool;->action_bar_expanded_action_views_exclusive:I

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 391
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 404
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 406
    :cond_5
    return-void

    .line 372
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 383
    :cond_7
    const/16 v0, 0x8

    goto :goto_1

    .line 395
    :cond_8
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 397
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 401
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 607
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 608
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 609
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 615
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 616
    :goto_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 618
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 619
    return-void

    :cond_2
    move v0, v2

    .line 611
    goto :goto_0

    :cond_3
    move v0, v1

    .line 615
    goto :goto_1

    :cond_4
    move v1, v2

    .line 616
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUserTitle:Z

    .line 561
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 562
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 328
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 576
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 583
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
