.class public Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "IconPageIndicator.java"

# interfaces
.implements Lcn/nubia/weather/ui/viewpagerIndicator/PageIndicator;


# instance fields
.field private mIconSelector:Ljava/lang/Runnable;

.field private final mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSelectedIndex:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 58
    new-instance v0, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    const v1, 0x7f010125

    invoke-direct {v0, p1, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    .line 59
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method private animateToIcon(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    invoke-virtual {v1, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "iconView":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    :cond_0
    new-instance v1, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;-><init>(Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    .line 74
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f010125

    const/4 v9, 0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    .line 134
    iget-object v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    invoke-virtual {v6}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->removeAllViews()V

    .line 135
    iget-object v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/ui/adapter/IconPagerAdapter;

    .line 136
    .local v2, "iconAdapter":Lcn/nubia/weather/ui/adapter/IconPagerAdapter;
    invoke-interface {v2}, Lcn/nubia/weather/ui/adapter/IconPagerAdapter;->getCount()I

    move-result v0

    .line 138
    .local v0, "count":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "isLocationOpen"

    .line 141
    invoke-static {v6, v7, v9}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 143
    .local v3, "isLocation":Z
    if-gt v0, v9, :cond_0

    .line 167
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 147
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 148
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v11, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    .local v5, "view":Landroid/widget/ImageView;
    const v6, 0x7f0200fb

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    const/16 v6, 0x12

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 152
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    invoke-virtual {v6, v5}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->addView(Landroid/view/View;)V

    .line 146
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v5    # "view":Landroid/widget/ImageView;
    :cond_1
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v11, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    .restart local v5    # "view":Landroid/widget/ImageView;
    const v6, 0x7f0200f9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    const/16 v6, 0xc

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 158
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    invoke-virtual {v6, v5}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 162
    .end local v5    # "view":Landroid/widget/ImageView;
    :cond_2
    iget v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mSelectedIndex:I

    if-le v6, v0, :cond_3

    .line 163
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mSelectedIndex:I

    .line 165
    :cond_3
    iget v6, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mSelectedIndex:I

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setCurrentItem(I)V

    .line 166
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->requestLayout()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 106
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setCurrentItem(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 177
    iget-object v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 178
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_0
    iput p1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mSelectedIndex:I

    .line 181
    iget-object v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 183
    iget-object v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 184
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 185
    iget-object v4, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mIconsLayout:Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;

    invoke-virtual {v4, v1}, Lcn/nubia/weather/ui/viewpagerIndicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 187
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 188
    if-eqz v2, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->animateToIcon(I)V

    .line 184
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 192
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 197
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 118
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 125
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_2

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_2
    iput-object p1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 129
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 130
    invoke-virtual {p0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 172
    invoke-virtual {p0, p2}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setCurrentItem(I)V

    .line 173
    return-void
.end method
