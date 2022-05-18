.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/ILoadingLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field protected final mHeaderImage:Landroid/widget/ImageView;

.field protected final mHeaderProgress:Landroid/widget/ProgressBar;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/widget/FrameLayout;

.field protected final mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 70
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 72
    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_vertical:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    :goto_0
    sget v5, Lcom/handmark/pulltorefresh/library/R$id;->fl_inner:I

    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    .line 83
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_text:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 84
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 85
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 86
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_image:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 88
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 102
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_9

    const/16 v5, 0x50

    :goto_1
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 106
    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 107
    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 111
    :goto_2
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .local v4, "styleID":Landroid/util/TypedValue;
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 121
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    .line 123
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_1
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .restart local v4    # "styleID":Landroid/util/TypedValue;
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 126
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 130
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_2
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 132
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 133
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 138
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 139
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    const/4 v2, 0x0

    .line 145
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    :cond_5
    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 154
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 155
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 173
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 178
    :cond_7
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 181
    return-void

    .line 74
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_horizontal:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 92
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_8

    const/16 v5, 0x30

    :goto_4
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 96
    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 97
    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_release_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 92
    :cond_8
    const/4 v5, 0x3

    goto :goto_4

    .line 102
    :cond_9
    const/4 v5, 0x5

    goto/16 :goto_1

    .line 156
    .restart local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 157
    const-string v5, "ptrDrawableTop"

    const-string v6, "ptrDrawableStart"

    invoke-static {v5, v6}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 163
    :pswitch_2
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 164
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 165
    :cond_b
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    const-string v5, "ptrDrawableBottom"

    const-string v6, "ptrDrawableEnd"

    invoke-static {v5, v6}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget v5, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 90
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 151
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 348
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 367
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 382
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 391
    :cond_1
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 206
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_3
    return-void
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .locals 1
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPullImpl(F)V

    .line 224
    :cond_0
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefreshImpl()V

    .line 233
    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :cond_1
    return-void

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshingImpl()V

    goto :goto_0
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefreshImpl()V

    .line 259
    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_1
    :goto_1
    return-void

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->resetImpl()V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 187
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    .line 294
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 299
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 303
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 307
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 193
    return-void
.end method

.method public final showInvisibleViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :cond_3
    return-void
.end method
