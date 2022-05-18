.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.super Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
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

.field private mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

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
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct/range {p0 .. p2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 133
    sget v2, Lcn/nubia/commonui/R$string;->action_bar_up_description:I

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 134
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 138
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 164
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 166
    sget-object v2, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v3, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 169
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 170
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 171
    .local v14, "pm":Landroid/content/pm/PackageManager;
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_navigationMode:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 173
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_title:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 174
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 175
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_logo:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 176
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_icon:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 180
    .local v13, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_homeLayout:I

    sget v3, Lcn/nubia/commonui/R$layout;->abc_action_bar_home:I

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 183
    .local v12, "homeResId":I
    sget v2, Lcn/nubia/commonui/R$layout;->abc_action_bar_up_container:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 186
    invoke-virtual {v13, v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    new-instance v3, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$3;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v13, v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 225
    .local v15, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 226
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 232
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_titleTextStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 234
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitleTextStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 236
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_progressBarStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressStyle:I

    .line 238
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_indeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 241
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_progressBarPadding:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 243
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_itemPadding:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    .line 246
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_displayOptions:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 249
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_customNavigationLayout:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 251
    .local v11, "customNavId":I
    if-eqz v11, :cond_1

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 254
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 257
    :cond_1
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_height:I

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    .line 259
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 269
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 271
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;Landroid/view/View;FF)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->isTouchInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 670
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 671
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 682
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 683
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 684
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 686
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 687
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$string;->action_bar_home_subtitle_description_format:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 697
    :goto_1
    return-object v1

    .line 673
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 674
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 677
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$string;->action_bar_home_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 691
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$string;->action_bar_home_description_format:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 697
    goto :goto_1
.end method

.method private configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

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
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

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
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 515
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 934
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 935
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 936
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcn/nubia/commonui/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 938
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcn/nubia/commonui/R$id;->action_bar_title:I

    .line 939
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 940
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcn/nubia/commonui/R$id;->action_bar_subtitle:I

    .line 941
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 943
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 944
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 946
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_2

    .line 951
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 953
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 954
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 959
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 960
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 961
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 962
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 964
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_5
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private isTouchInView(Landroid/view/View;FF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v5

    .line 277
    :cond_1
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 278
    .local v2, "location":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 279
    aget v1, v2, v5

    .line 280
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v1, v7

    .line 281
    .local v3, "right":I
    aget v4, v2, v6

    .line 282
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 283
    .local v0, "bottom":I
    int-to-float v7, v4

    cmpl-float v7, p3, v7

    if-ltz v7, :cond_0

    add-int/lit8 v7, v0, 0x14

    int-to-float v7, v7

    cmpg-float v7, p3, v7

    if-gtz v7, :cond_0

    int-to-float v7, v1

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_0

    int-to-float v7, v3

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_0

    move v5, v6

    .line 284
    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

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
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 587
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 588
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 592
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 593
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 594
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 597
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogoNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 599
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 600
    return-void

    :cond_3
    move v0, v1

    .line 593
    goto :goto_0

    .line 594
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z
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
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 527
    .local v0, "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 530
    :cond_0
    return-void

    .line 525
    .end local v0    # "item":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

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
    .param p1, "attrs"    # Landroid/util/AttributeSet;

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
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

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
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

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
    const/4 v3, 0x0

    .line 987
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v3

    .line 991
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 992
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 996
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 997
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 998
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 999
    const/4 v3, 0x1

    goto :goto_0

    .line 997
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 296
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 297
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 298
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    :cond_0
    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 301
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 302
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    .line 305
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v1, :cond_2

    .line 306
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 309
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_4

    .line 310
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 311
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 312
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 317
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
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
    .locals 4

    .prologue
    .line 916
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 918
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 919
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 921
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 924
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 925
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 926
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 928
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 931
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1251
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1253
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-static/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1259
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_b

    const/16 v22, 0x1

    .line 1260
    .local v22, "direction":I
    :goto_1
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 1265
    .local v11, "menuStart":I
    :goto_2
    if-eqz v8, :cond_d

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1266
    .local v36, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1268
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1270
    .local v26, "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1271
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f

    const/16 v32, 0x1

    .line 1273
    .local v32, "showTitle":Z
    :goto_5
    const/16 v33, 0x0

    .line 1274
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 1275
    invoke-virtual/range {v26 .. v26}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    .line 1281
    const/16 v33, 0x0

    .line 1290
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1292
    .end local v36    # "x":I
    .local v5, "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1295
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1320
    :cond_3
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_4

    .line 1321
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v8, :cond_13

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v8, :cond_14

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionMenuChild(Landroid/view/View;IIIZ)I

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1335
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1336
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 1337
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_15

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1340
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1343
    :cond_5
    const/16 v20, 0x0

    .line 1344
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_16

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1350
    :cond_6
    :goto_b
    if-eqz v20, :cond_a

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v27

    .line 1352
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1353
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_17

    check-cast v28, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1355
    .local v15, "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :goto_c
    if-eqz v15, :cond_18

    iget v0, v15, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1357
    .local v23, "gravity":I
    :goto_d
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1359
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1360
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1361
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_7

    .line 1362
    invoke-virtual {v15}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1363
    invoke-virtual {v15}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1364
    iget v0, v15, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1365
    iget v0, v15, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1368
    :cond_7
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1371
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1c

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1373
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1a

    .line 1374
    add-int v19, v18, v29

    .line 1375
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1376
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_19

    .line 1377
    const/16 v25, 0x5

    .line 1394
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_8
    :goto_e
    const/16 v37, 0x0

    .line 1395
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1407
    :goto_f
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1409
    .local v35, "vgravity":I
    if-nez v23, :cond_9

    .line 1410
    const/16 v35, 0x10

    .line 1413
    :cond_9
    const/16 v38, 0x0

    .line 1414
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_0

    .line 1429
    :goto_10
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1430
    .local v21, "customWidth":I
    add-int v3, v37, v21

    .line 1431
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    .line 1430
    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1432
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1435
    .end local v15    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1438
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1439
    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    .line 1438
    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1259
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v20    # "customView":Landroid/view/View;
    .end local v22    # "direction":I
    .end local v24    # "halfProgressHeight":I
    .end local v26    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_b
    const/16 v22, -0x1

    goto/16 :goto_1

    .line 1260
    .restart local v22    # "direction":I
    :cond_c
    sub-int v3, p4, p2

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_2

    .line 1265
    .restart local v11    # "menuStart":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v36

    goto/16 :goto_3

    .line 1268
    .restart local v6    # "y":I
    .restart local v36    # "x":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_4

    .line 1271
    .restart local v26    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1283
    .restart local v32    # "showTitle":Z
    .restart local v33    # "startOffset":I
    :cond_10
    if-eqz v32, :cond_2

    .line 1284
    invoke-virtual/range {v26 .. v26}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v33

    goto/16 :goto_6

    .line 1299
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    if-eqz v3, :cond_3

    .line 1300
    if-eqz v32, :cond_11

    .line 1301
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1303
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1305
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1309
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3

    .line 1310
    if-eqz v32, :cond_12

    .line 1311
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1312
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1314
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1321
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1324
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1337
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 1346
    .restart local v20    # "customView":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_b

    .line 1353
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 1355
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :cond_18
    const v23, 0x800013

    goto/16 :goto_d

    .line 1378
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v23    # "gravity":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_19
    move/from16 v0, v17

    if-ge v0, v11, :cond_8

    .line 1379
    const/16 v25, 0x3

    goto/16 :goto_e

    .line 1382
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1a
    move/from16 v19, v18

    .line 1383
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1384
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_1b

    .line 1385
    const/16 v25, 0x3

    goto/16 :goto_e

    .line 1386
    :cond_1b
    move/from16 v0, v17

    if-le v0, v11, :cond_8

    .line 1387
    const/16 v25, 0x5

    goto/16 :goto_e

    .line 1390
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1c
    if-nez v23, :cond_8

    .line 1391
    const v25, 0x800003

    goto/16 :goto_e

    .line 1397
    .restart local v37    # "xpos":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1398
    goto/16 :goto_f

    .line 1400
    :pswitch_5
    if-eqz v8, :cond_1d

    move/from16 v37, v11

    .line 1401
    :goto_11
    goto/16 :goto_f

    :cond_1d
    move/from16 v37, v5

    .line 1400
    goto :goto_11

    .line 1403
    :pswitch_6
    if-eqz v8, :cond_1e

    sub-int v37, v5, v29

    :goto_12
    goto/16 :goto_f

    :cond_1e
    sub-int v37, v11, v29

    goto :goto_12

    .line 1416
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    .line 1417
    .local v31, "paddedTop":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1418
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    .line 1419
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    .line 1420
    goto/16 :goto_10

    .line 1422
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1423
    goto/16 :goto_10

    .line 1425
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1426
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_10

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
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 1008
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIsCollapsible:Z

    move/from16 v45, v0

    if-eqz v45, :cond_6

    .line 1009
    const/16 v43, 0x0

    .line 1010
    .local v43, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 1011
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1012
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    .line 1013
    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v45

    if-eqz v45, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v7, v0, :cond_1

    .line 1015
    add-int/lit8 v43, v43, 0x1

    .line 1010
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1019
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v39

    .line 1020
    .local v39, "upChildCount":I
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1022
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 1023
    add-int/lit8 v43, v43, 0x1

    .line 1020
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1027
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v43, :cond_6

    .line 1029
    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1246
    .end local v26    # "i":I
    .end local v39    # "upChildCount":I
    .end local v43    # "visibleChildren":I
    :cond_5
    :goto_2
    return-void

    .line 1034
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 1035
    .local v44, "widthMode":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_7

    .line 1036
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 1042
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1043
    .local v18, "heightMode":I
    const/high16 v45, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v45

    if-eq v0, v1, :cond_8

    .line 1044
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 1049
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1051
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-ltz v45, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 1054
    .local v31, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v46

    add-int v42, v45, v46

    .line 1055
    .local v42, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v34

    .line 1056
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v35

    .line 1057
    .local v35, "paddingRight":I
    sub-int v17, v31, v42

    .line 1058
    .local v17, "height":I
    const/high16 v45, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1060
    .local v9, "childSpecHeight":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1063
    .local v16, "exactHeightSpec":I
    sub-int v45, v10, v34

    sub-int v6, v45, v35

    .line 1064
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 1065
    .local v28, "leftOfCenter":I
    move/from16 v36, v28

    .line 1067
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    .line 1068
    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x8

    if-eqz v45, :cond_17

    const/16 v37, 0x1

    .line 1071
    .local v37, "showTitle":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1074
    .local v20, "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1076
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-gez v45, :cond_19

    .line 1077
    const/high16 v45, -0x80000000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1092
    .local v24, "homeWidthSpec":I
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1094
    const/16 v23, 0x0

    .line 1095
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_a

    :cond_9
    if-eqz v37, :cond_b

    .line 1097
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 1098
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v45

    add-int v22, v23, v45

    .line 1099
    .local v22, "homeOffsetWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1100
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1103
    .end local v22    # "homeOffsetWidth":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_c

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v16

    move/from16 v3, v46

    invoke-virtual {v0, v1, v6, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1106
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v46, v0

    .line 1107
    invoke-virtual/range {v46 .. v46}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    .line 1106
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1110
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    .line 1111
    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_d

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v9, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1114
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    .line 1115
    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    .line 1114
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1118
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-nez v45, :cond_e

    .line 1119
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 1153
    :cond_e
    :goto_7
    const/4 v15, 0x0

    .line 1154
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1c

    .line 1155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1161
    :cond_f
    :goto_8
    if-eqz v15, :cond_13

    .line 1163
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    .line 1162
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1164
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    move/from16 v45, v0

    if-eqz v45, :cond_1d

    move-object/from16 v45, v30

    check-cast v45, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    move-object/from16 v5, v45

    .line 1167
    .local v5, "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    .line 1168
    .local v25, "horizontalMargin":I
    const/16 v41, 0x0

    .line 1169
    .local v41, "verticalMargin":I
    if-eqz v5, :cond_10

    .line 1170
    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v45, v0

    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v46, v0

    add-int v25, v45, v46

    .line 1171
    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v45, v0

    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v41, v45, v46

    .line 1178
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_1e

    .line 1179
    const/high16 v12, -0x80000000

    .line 1184
    .local v12, "customNavHeightMode":I
    :goto_a
    const/16 v45, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    if-ltz v46, :cond_11

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    .line 1185
    move/from16 v0, v46

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_11
    sub-int v46, v17, v41

    .line 1184
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1188
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_20

    const/high16 v14, 0x40000000    # 2.0f

    .line 1190
    .local v14, "customNavWidthMode":I
    :goto_b
    const/16 v46, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-ltz v45, :cond_21

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    .line 1191
    move/from16 v0, v45

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v45

    :goto_c
    sub-int v45, v45, v25

    .line 1190
    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1193
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_22

    iget v0, v5, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v45, v0

    :goto_d
    and-int/lit8 v19, v45, 0x7

    .line 1199
    .local v19, "hgrav":I
    const/16 v45, 0x1

    move/from16 v0, v19

    move/from16 v1, v45

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    .line 1201
    move/from16 v0, v28

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v45

    mul-int/lit8 v13, v45, 0x2

    .line 1204
    :cond_12
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    .line 1205
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 1204
    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1207
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, v25

    sub-int v6, v6, v45

    .line 1214
    .end local v5    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    add-int v46, v6, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    .line 1215
    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/16 v48, 0x0

    .line 1214
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_14

    .line 1218
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    .line 1219
    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v28, v46

    .line 1218
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1222
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_25

    .line 1223
    const/16 v32, 0x0

    .line 1224
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_23

    .line 1225
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 1226
    .local v40, "v":Landroid/view/View;
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v33, v45, v42

    .line 1227
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_15

    .line 1228
    move/from16 v32, v33

    .line 1224
    :cond_15
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1052
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v40    # "v":Landroid/view/View;
    .end local v42    # "verticalPadding":I
    :cond_16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_3

    .line 1068
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v42    # "verticalPadding":I
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1071
    .restart local v37    # "showTitle":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_5

    .line 1080
    .restart local v20    # "homeLayout":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_6

    .line 1121
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1122
    if-eqz v37, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1124
    .local v27, "itemPaddingSize":I
    :goto_f
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1126
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    .line 1129
    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    .line 1127
    invoke-virtual/range {v45 .. v47}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->measure(II)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v29

    .line 1131
    .local v29, "listNavWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1132
    const/16 v45, 0x0

    sub-int v46, v28, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1133
    goto/16 :goto_7

    .line 1122
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_f

    .line 1136
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1137
    if-eqz v37, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1139
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1141
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    .line 1144
    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    .line 1142
    invoke-virtual/range {v45 .. v47}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v38

    .line 1146
    .local v38, "tabWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1147
    const/16 v45, 0x0

    sub-int v46, v28, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1137
    .end local v27    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_10

    .line 1156
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x10

    if-eqz v45, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_f

    .line 1158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1164
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1181
    .restart local v5    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v41    # "verticalMargin":I
    :cond_1e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1f

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_11
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_1f
    const/high16 v12, -0x80000000

    goto :goto_11

    .line 1188
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_20
    const/high16 v14, -0x80000000

    goto/16 :goto_b

    .restart local v14    # "customNavWidthMode":I
    :cond_21
    move/from16 v45, v6

    .line 1191
    goto/16 :goto_c

    .line 1193
    .restart local v13    # "customNavWidth":I
    :cond_22
    const v45, 0x800013

    goto/16 :goto_d

    .line 1231
    .end local v5    # "ablp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1236
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_24

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1240
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_5

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v46, v0

    mul-int/lit8 v46, v46, 0x2

    sub-int v46, v10, v46

    const/high16 v47, 0x40000000    # 2.0f

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v47

    const/high16 v48, -0x80000000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    .line 1241
    invoke-virtual/range {v45 .. v47}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 1233
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1476
    move-object v1, p1

    check-cast v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    .line 1478
    .local v1, "state":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1480
    iget v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1483
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1484
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1485
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1489
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1490
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1492
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1459
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1460
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1462
    .local v0, "state":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1464
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 1465
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1470
    return-object v0
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
    .param p1, "isShow"    # Z

    .prologue
    .line 2004
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 2005
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

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
    .param p1, "view"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .prologue
    .line 971
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContextView:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 972
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 533
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 534
    .local v0, "showCustom":Z
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
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 544
    :cond_2
    return-void

    .line 533
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

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
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1500
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1501
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 701
    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_6

    .line 703
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 705
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_11

    .line 706
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 708
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 709
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_7

    move v4, v7

    .line 710
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 717
    if-eqz v4, :cond_0

    .line 718
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 722
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 723
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_8

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_8

    move v3, v7

    .line 725
    .local v3, "logoVis":Z
    :goto_2
    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_9

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v10, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 728
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 729
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_a

    .line 730
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->initTitle()V

    .line 736
    :cond_2
    :goto_4
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_b

    move v5, v7

    .line 737
    .local v5, "showHome":Z
    :goto_5
    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    move v1, v7

    .line 738
    .local v1, "homeAsUp":Z
    :goto_6
    if-nez v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v7

    .line 740
    .local v6, "titleUp":Z
    :goto_7
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 746
    if-nez v5, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_e

    move v2, v8

    .line 748
    .local v2, "homeVis":I
    :goto_8
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 750
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 752
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_f

    .line 753
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 759
    :cond_4
    :goto_9
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 761
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_10

    .line 762
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 763
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 770
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->requestLayout()V

    .line 777
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_b
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 778
    return-void

    .line 701
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_7
    move v4, v8

    .line 709
    goto/16 :goto_1

    :cond_8
    move v3, v8

    .line 723
    goto :goto_2

    .line 725
    .restart local v3    # "logoVis":Z
    :cond_9
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 732
    .end local v3    # "logoVis":Z
    :cond_a
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v5, v8

    .line 736
    goto :goto_5

    .restart local v5    # "showHome":Z
    :cond_c
    move v1, v8

    .line 737
    goto :goto_6

    .restart local v1    # "homeAsUp":Z
    :cond_d
    move v6, v8

    .line 738
    goto :goto_7

    .line 746
    .restart local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    goto :goto_8

    .line 755
    .restart local v2    # "homeVis":I
    :cond_f
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 765
    :cond_10
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 766
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 772
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_11
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;

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

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 873
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setOnItemSelectedListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 875
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 883
    return-void
.end method

.method public setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 422
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    .line 426
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 427
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 428
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 429
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 430
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 431
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    invoke-virtual {p1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 434
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 426
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 623
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 624
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I
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
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

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

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 790
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I
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
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 442
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 505
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 445
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 446
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 449
    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 450
    .local v0, "builder":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mOptionsMenu:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 451
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v4, :cond_2

    .line 452
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 453
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 454
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 457
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 458
    new-instance v4, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 460
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 461
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    sget v5, Lcn/nubia/commonui/R$id;->action_menu_presenter:I

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setId(I)V

    .line 462
    new-instance v4, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 466
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 469
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 470
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$bool;->action_bar_expanded_action_views_exclusive:I

    .line 471
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 470
    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 473
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 474
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 475
    .local v2, "menuView":Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 476
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 477
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    goto/16 :goto_0

    .line 481
    .end local v2    # "menuView":Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 483
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 484
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    .line 483
    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 486
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 488
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 489
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 490
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->configPresenters(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 491
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 492
    .restart local v2    # "menuView":Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 493
    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 494
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    .line 495
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 497
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setVisibility(I)V

    .line 498
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 501
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

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
    .param p1, "resId"    # I

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
    .param p1, "description"    # Ljava/lang/CharSequence;

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
    .param p1, "resId"    # I

    .prologue
    .line 1504
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1505
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1495
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1496
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 818
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavigationMode:I

    .line 819
    .local v0, "oldMode":I
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
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    if-eqz v2, :cond_0

    .line 824
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 828
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-nez v2, :cond_3

    .line 836
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/commonui/R$attr;->actionDropDownStyle:I

    invoke-direct {v2, v3, v5, v4}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    .line 838
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    sget v3, Lcn/nubia/commonui/R$id;->action_bar_spinner:I

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setId(I)V

    .line 842
    new-instance v2, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/commonui/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v2, v3, v5, v4}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    .line 844
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 847
    .local v1, "params":Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 848
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v2, v3, v1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    .end local v1    # "params":Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 851
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 853
    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mNavItemSelectedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setOnItemSelectedListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 854
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mListNavLayout:Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 857
    :pswitch_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 858
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTabScrollView:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

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

.method public setOnBack(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2009
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2010
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mHomeLayout:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;->access$1900(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$HomeView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2011
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 4
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 361
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 363
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 366
    :cond_0
    if-eqz p1, :cond_6

    .line 367
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->requestLayout()V

    .line 377
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 383
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionBarTopShow:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    :cond_3
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 389
    if-nez p1, :cond_8

    .line 390
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 391
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$bool;->action_bar_expanded_action_views_exclusive:I

    .line 392
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 391
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 404
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 406
    :cond_5
    return-void

    .line 372
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 373
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 383
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 395
    :cond_8
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 397
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    .line 397
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 401
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

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
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 607
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 608
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 609
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 614
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 615
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 616
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 618
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 619
    return-void

    :cond_2
    move v1, v3

    .line 611
    goto :goto_0

    :cond_3
    move v0, v2

    .line 615
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 616
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

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
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 327
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 328
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

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
