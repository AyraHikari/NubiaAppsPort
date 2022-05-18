.class public Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;
.super Lcom/zte/mifavor/androidx/behavior/BaseSinkTitleBehavior;
.source "BaseSinkSingleTitleBehavior.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BSSingleTitleBehavior"


# instance fields
.field private mAppBarHeight:I

.field private mAppBarTotalScrollRange:I

.field private mIsSearchPage:Z

.field private mMaxAppBarLayoutBottom:I

.field private mMaxPrimaryTitleFontSize:I

.field private mMaxPrimaryTitleHeight:I

.field private mMinPrimaryTitleFontSize:I

.field private mMinPrimaryTitleHeight:I

.field private mMinPrimaryTitleTranslationY:F

.field private mPrimaryTitleSinkTextColor:I

.field private mPrimaryTitleText:Ljava/lang/String;

.field private mPrimaryTitleTextColor:I

.field private mPrimaryTitleWidth:I

.field private mShowPrimaryTitleCollapsed:Z

.field private mStatusBarHeight:I

.field private mTitleTotalTranslationRangeX:F

.field private mTitleTotalTranslationRangeY:F

.field private mToolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZLjava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/zte/mifavor/androidx/behavior/BaseSinkTitleBehavior;-><init>(I)V

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    .line 27
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mToolbarHeight:I

    .line 28
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mStatusBarHeight:I

    .line 29
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarHeight:I

    .line 31
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    .line 32
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    .line 34
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleHeight:I

    .line 35
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleHeight:I

    const/4 v2, 0x0

    .line 37
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeY:F

    .line 38
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeX:F

    .line 40
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleTranslationY:F

    .line 47
    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxAppBarLayoutBottom:I

    .line 49
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mIsSearchPage:Z

    .line 53
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    .line 61
    iput-object p5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleText:Ljava/lang/String;

    .line 62
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mShowPrimaryTitleCollapsed:Z

    .line 63
    iput-boolean p4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mIsSearchPage:Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->getCommonParameters(Landroid/content/Context;Z)V

    return-void
.end method

.method private getCommonParameters(Landroid/content/Context;Z)V
    .locals 6

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string p0, "BSSingleTitleBehavior"

    const-string p1, "getCommonParameters, status_bar_height not found !!!"

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mStatusBarHeight:I

    .line 200
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mToolbarHeight:I

    .line 201
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_sink_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarHeight:I

    .line 203
    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarHeight:I

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mToolbarHeight:I

    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mStatusBarHeight:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    const-string p0, "BSSingleTitleBehavior"

    const-string p1, "getCommonParameters, Invalid Height of App Bar !!!"

    .line 204
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_1
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_primary_font_size_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    .line 209
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_sink_primary_font_size_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    .line 210
    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    if-ge v1, v2, :cond_2

    goto/16 :goto_1

    .line 217
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleHeight:I

    .line 218
    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleHeight:I

    .line 219
    iget-object v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleText:Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/zte/mifavor/utils/SinkUtils;->calculateDesiredTextWidth(Ljava/lang/String;F)I

    move-result v1

    .line 220
    invoke-static {p1}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTitleViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    .line 221
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    if-le v1, v2, :cond_3

    .line 222
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleHeight:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleHeight:I

    .line 225
    :cond_3
    iget-boolean v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mIsSearchPage:Z

    if-eqz v2, :cond_4

    sget p2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    sget p2, Lcom/zte/extres/R$dimen;->mfvc_list_ic_txt_left_padding:I

    .line 227
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_5
    sget p2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    .line 228
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 229
    :goto_0
    sget v2, Lcom/zte/extres/R$dimen;->mfvc_sink_expanded_title_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v3, p2, v2

    int-to-float v3, v3

    .line 230
    iput v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeX:F

    .line 232
    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mToolbarHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleTranslationY:F

    .line 233
    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarHeight:I

    int-to-float v3, v3

    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mStatusBarHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 235
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleTranslationY:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeY:F

    .line 237
    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleTextColor:I

    .line 238
    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb_sink_txt:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleSinkTextColor:I

    const-string v0, "BSSingleTitleBehavior"

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCommonParameters, context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mToolbarHeight="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mToolbarHeight:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAppBarHeight="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarHeight:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mStatusBarHeight="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mStatusBarHeight:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMinPrimaryTitleFontSize="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMaxPrimaryTitleFontSize="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMinPrimaryTitleHeight="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleHeight:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMaxPrimaryTitleHeight="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleHeight:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", collapsedPaddingX="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expandedPaddingX="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMinPrimaryTitleTranslationY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleTranslationY:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mTitleTotalTranslationRangeY="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeY:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mPrimaryTitleTextColor=0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleTextColor:I

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPrimaryTitleSinkTextColor=0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleSinkTextColor:I

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPrimaryTitleWidth="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", desiredWidth="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_1
    const-string p0, "BSSingleTitleBehavior"

    const-string p1, "getCommonParameters, Invalid font size of title !!!"

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 69
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeY:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const-string p0, "BSSingleTitleBehavior"

    const-string p1, "onDependentViewChanged, Invalid scroll Range of page title !!!"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 74
    :cond_0
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 76
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    if-gez p1, :cond_1

    .line 77
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    .line 78
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxAppBarLayoutBottom:I

    if-gez p1, :cond_1

    .line 79
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mToolbarHeight:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxAppBarLayoutBottom:I

    .line 84
    :cond_1
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    const/4 v1, 0x1

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    const-string v2, "BSSingleTitleBehavior"

    const-string v3, "onDependentViewChanged, all children of the app bar can not scroll !!!"

    .line 86
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 91
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 94
    :goto_1
    check-cast p2, Landroid/widget/TextView;

    .line 96
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    .line 97
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    if-ne v5, v6, :cond_5

    .line 98
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 99
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 100
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mCollapsedTitleWidthDecrement:I

    sub-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 101
    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    if-ge v5, v6, :cond_7

    .line 102
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x2

    if-lt v5, v6, :cond_6

    .line 103
    invoke-virtual {p2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 104
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 105
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 106
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    .line 109
    :cond_6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 110
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 111
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 115
    :cond_7
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    const/16 v7, 0x17

    if-ne v5, v6, :cond_9

    .line 116
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_8

    .line 117
    sget v5, Lcom/zte/extres/R$style;->mfvc_appbar_primary_font:I

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3

    .line 119
    :cond_8
    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleTextColor:I

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_9
    if-nez v2, :cond_b

    .line 122
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_a

    .line 123
    sget v5, Lcom/zte/extres/R$style;->mfvc_appbar_sink_primary_font:I

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3

    .line 125
    :cond_a
    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleSinkTextColor:I

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :cond_b
    :goto_3
    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxPrimaryTitleFontSize:I

    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleFontSize:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 130
    invoke-virtual {p2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    invoke-static {v5}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v6

    .line 133
    iget-object v7, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleText:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/zte/mifavor/utils/SinkUtils;->calculateDesiredTextWidth(Ljava/lang/String;F)I

    move-result v5

    .line 134
    iget v7, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mPrimaryTitleWidth:I

    if-le v5, v7, :cond_c

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x6

    .line 138
    :cond_c
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 141
    iget v7, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    if-eq v7, v6, :cond_d

    .line 142
    iput v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    move v6, v1

    goto :goto_4

    :cond_d
    move v6, v0

    .line 146
    :goto_4
    iget v7, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    if-eq v7, v4, :cond_e

    .line 147
    iput v4, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    move v4, v1

    goto :goto_5

    :cond_e
    move v4, v0

    :goto_5
    if-nez v6, :cond_f

    if-eqz v4, :cond_10

    .line 151
    :cond_f
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_10
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v4, v1, :cond_11

    move v4, v1

    goto :goto_6

    :cond_11
    move v4, v0

    .line 156
    :goto_6
    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeX:F

    mul-float/2addr v5, p1

    if-nez v4, :cond_12

    neg-float v5, v5

    .line 157
    :cond_12
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 159
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mTitleTotalTranslationRangeY:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMinPrimaryTitleTranslationY:F

    add-float/2addr v4, v5

    .line 160
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getBottom()I

    move-result p3

    const v5, 0x3e4ccccd    # 0.2f

    if-nez v2, :cond_13

    .line 161
    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxAppBarLayoutBottom:I

    if-le p3, v6, :cond_13

    .line 163
    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mMaxAppBarLayoutBottom:I

    sub-int/2addr p3, v6

    int-to-float p3, p3

    mul-float/2addr p3, v5

    add-float/2addr v4, p3

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_7

    .line 166
    :cond_13
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 169
    :goto_7
    iget-boolean p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mIsSearchPage:Z

    if-eqz p3, :cond_15

    cmpg-float p0, p1, v5

    if-gez p0, :cond_14

    move p1, v3

    .line 174
    :cond_14
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_8

    .line 176
    :cond_15
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mShowPrimaryTitleCollapsed:Z

    if-nez p1, :cond_17

    .line 177
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkSingleTitleBehavior;->mAppBarTotalScrollRange:I

    if-ne p1, p0, :cond_16

    const/4 p0, 0x4

    .line 179
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 182
    :cond_16
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_17
    :goto_8
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return v1
.end method
