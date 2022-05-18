.class public Lcn/nubia/commonui/widget/tab/NubiaPagerTab;
.super Landroid/widget/HorizontalScrollView;
.source "NubiaPagerTab.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/tab/NubiaPagerTab$a;
    }
.end annotation


# static fields
.field private static final TAB_ITEM_WIDTH:F = 90.0f


# instance fields
.field private mActivatedColor:I

.field private mContext:Landroid/content/Context;

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mNormalColor:I

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrevSelected:I

.field private mTabCount:I

.field private mTabItemWidth:I

.field private mTabStrip:Landroid/widget/LinearLayout;

.field private mTabTextColor:Landroid/content/res/ColorStateList;

.field private mTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    sget v0, Lcn/nubia/commonui/R$attr;->nubiaPagerTabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mIndicatorRect:Landroid/graphics/Rect;

    .line 57
    iput v7, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    .line 64
    iput v5, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabCount:I

    .line 70
    iput v5, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabItemWidth:I

    .line 105
    sget-object v0, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    sget v1, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab_tabActivatedColor:I

    sget v2, Lcn/nubia/commonui/R$color;->nubia_activated_red:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mActivatedColor:I

    .line 112
    sget v1, Lcn/nubia/commonui/R$styleable;->NubiaPagerTab_tabNormalColor:I

    sget v2, Lcn/nubia/commonui/R$color;->nubia_secondary_text_default_material_light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mNormalColor:I

    .line 116
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v8, [[I

    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    aput v5, v3, v5

    aput-object v3, v2, v6

    new-array v3, v8, [I

    iget v4, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mActivatedColor:I

    aput v4, v3, v5

    iget v4, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mNormalColor:I

    aput v4, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->setFillViewport(Z)V

    .line 124
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabItemWidth:I

    .line 126
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    .line 127
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)I
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_tab_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 150
    sget v0, Lcn/nubia/commonui/R$id;->nubia_tab_image:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 151
    sget v1, Lcn/nubia/commonui/R$id;->nubia_tab_title:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 152
    sget v2, Lcn/nubia/commonui/R$id;->nubia_tab_label:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    iget-object v4, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    new-instance v0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;

    invoke-direct {v0, p0, p3}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$1;-><init>(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$a;

    invoke-direct {v0, p0, p3}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab$a;-><init>(Lcn/nubia/commonui/widget/tab/NubiaPagerTab;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabItemWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-void
.end method

.method private addTabs(Lcn/nubia/commonui/widget/tab/PagerAdapterTab;)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 141
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/tab/PagerAdapterTab;->getCount()I

    move-result v1

    .line 142
    iput v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabCount:I

    .line 143
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/tab/PagerAdapterTab;->getPageImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/tab/PagerAdapterTab;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 241
    :cond_0
    return p1
.end method


# virtual methods
.method public dip2px(F)I
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 246
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I

    move-result v0

    .line 205
    iget v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-ltz v0, :cond_0

    .line 206
    iput v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    .line 207
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 210
    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    if-lt v0, v1, :cond_1

    .line 214
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getRtlPosition(I)I

    move-result v0

    .line 218
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 219
    iget v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    if-le v1, v2, :cond_0

    .line 220
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    iget v2, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTabStrip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 229
    invoke-virtual {p0, v1, v4}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->smoothScrollTo(II)V

    .line 230
    iput v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPrevSelected:I

    .line 232
    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/tab/PagerAdapterTab;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->addTabs(Lcn/nubia/commonui/widget/tab/PagerAdapterTab;)V

    .line 136
    return-void
.end method

.method public setViewVisable(II)V
    .locals 1

    .prologue
    .line 179
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisableAndValue(IILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 189
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
