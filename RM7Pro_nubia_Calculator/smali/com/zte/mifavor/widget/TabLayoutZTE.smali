.class public Lcom/zte/mifavor/widget/TabLayoutZTE;
.super Lcom/google/android/material/tabs/TabLayout;
.source "TabLayoutZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;,
        Lcom/zte/mifavor/widget/TabLayoutZTE$IconTabInterface;
    }
.end annotation


# static fields
.field private static final COUNT_2:I = 0x2

.field private static final COUNT_3:I = 0x3

.field private static final COUNT_4:I = 0x4

.field private static final COUNT_5:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TabLayoutZTE"


# instance fields
.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pagerAdapterIconTabObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 46
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 51
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 56
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/TabLayoutZTE;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabLayoutPadding()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabSelectListener()V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setSelectedTabIndicatorHeight(I)V

    return-void
.end method

.method private setTabLayoutPadding()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_bottom_tab_padding01:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_bottom_tab_padding02:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_bottom_tab_padding03:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_bottom_tab_padding04:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 201
    :cond_4
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTabSelectListener()V
    .locals 1

    .line 167
    new-instance v0, Lcom/zte/mifavor/widget/TabLayoutZTE$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/TabLayoutZTE$1;-><init>(Lcom/zte/mifavor/widget/TabLayoutZTE;)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0, v1, p2}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getTabView(ILandroidx/viewpager/widget/PagerAdapter;Z)Landroid/view/View;

    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    if-nez p0, :cond_2

    return-void

    .line 78
    :cond_2
    sget p1, Lcom/zte/extres/R$id;->tabTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 p1, 0x17

    if-eqz p2, :cond_3

    .line 80
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_4

    .line 81
    sget p1, Lcom/zte/extres/R$style;->mfvc_bottom_tab_focused_font:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 84
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_4

    .line 85
    sget p1, Lcom/zte/extres/R$style;->mfvc_bottom_tab_normal_font:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_4
    :goto_0
    const/16 p1, 0x8

    const/16 p2, 0xb

    const/4 v0, 0x1

    .line 88
    invoke-static {p0, p1, p2, v0, v0}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    return-void
.end method

.method public getTabView(ILandroidx/viewpager/widget/PagerAdapter;Z)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/zte/extres/R$layout;->tab_item_layout_zte:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 121
    :cond_0
    sget v0, Lcom/zte/extres/R$id;->tabTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget v0, Lcom/zte/extres/R$id;->tabImageView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 125
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 129
    :goto_0
    check-cast p2, Lcom/zte/mifavor/widget/TabLayoutZTE$IconTabInterface;

    invoke-interface {p2, p1}, Lcom/zte/mifavor/widget/TabLayoutZTE$IconTabInterface;->getPageIconRes(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    sget p3, Lcom/zte/extres/R$id;->tabConnerTextView:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 131
    invoke-interface {p2, p1}, Lcom/zte/mifavor/widget/TabLayoutZTE$IconTabInterface;->getConnerNum(I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x4

    .line 133
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p0
.end method

.method public setConnerNum(II)V
    .locals 1

    if-ltz p1, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TabLayoutZTE;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 237
    :cond_2
    sget p1, Lcom/zte/extres/R$id;->tabConnerTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p2, :cond_3

    const/4 p1, 0x4

    .line 239
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public setTabViewForState(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez p0, :cond_1

    return-void

    .line 149
    :cond_1
    sget p0, Lcom/zte/extres/R$id;->tabTextView:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    if-eqz p2, :cond_2

    .line 152
    sget v0, Lcom/zte/extres/R$style;->mfvc_bottom_tab_focused_font:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 154
    :cond_2
    sget v0, Lcom/zte/extres/R$style;->mfvc_bottom_tab_normal_font:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    const/16 v0, 0x8

    const/16 v1, 0xb

    .line 156
    invoke-static {p0, v0, v1, v2, v2}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 158
    :cond_3
    sget p0, Lcom/zte/extres/R$id;->tabImageView:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 160
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->pagerAdapterIconTabObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->pagerAdapterIconTabObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 98
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->pagerAdapterIconTabObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/TabLayoutZTE$PagerAdapterIconTabObserver;-><init>(Lcom/zte/mifavor/widget/TabLayoutZTE;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->pagerAdapterIconTabObserver:Landroid/database/DataSetObserver;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->pagerAdapterIconTabObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabLayoutZTE;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/mifavor/widget/TabLayoutZTE$IconTabInterface;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 112
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabLayoutZTE;->setTabLayoutPadding()V

    return-void

    .line 105
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewPager does not have adapter instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
