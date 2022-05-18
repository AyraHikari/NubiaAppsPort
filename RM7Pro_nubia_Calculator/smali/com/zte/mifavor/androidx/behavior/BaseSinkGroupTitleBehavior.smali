.class public abstract Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;
.super Lcom/zte/mifavor/androidx/behavior/BaseSinkTitleBehavior;
.source "BaseSinkGroupTitleBehavior.java"


# static fields
.field protected static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BSGroupTitleBehavior"


# instance fields
.field protected mAppBarHeight:I

.field protected mAppBarTotalScrollRange:I

.field protected mMaxAppBarLayoutBottom:I

.field protected mMaxPrimaryTitleFontSize:I

.field protected mMaxPrimaryTitleHeight:I

.field protected mMaxSecondaryTitleHeight:I

.field protected mMinPrimaryTitleFontSize:I

.field protected mMinPrimaryTitleHeight:I

.field protected mMinPrimaryTitleTranslationY:F

.field protected mMinSecondaryTitleTranslationY:F

.field protected mPrimaryTitleSinkTextColor:I

.field protected mPrimaryTitleText:Ljava/lang/String;

.field protected mPrimaryTitleTextColor:I

.field protected mPrimaryTitleWidth:I

.field protected mSecondaryTitleHeight:I

.field protected mSecondaryTitleText:Ljava/lang/String;

.field protected mSecondaryTitleWidth:I

.field protected mStatusBarHeight:I

.field protected mTitleTotalTranslationRangeX:F

.field protected mTitleTotalTranslationRangeY:F

.field protected mToolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lcom/zte/mifavor/androidx/behavior/BaseSinkTitleBehavior;-><init>(I)V

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    .line 21
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    .line 22
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mStatusBarHeight:I

    .line 23
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarHeight:I

    .line 25
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    .line 26
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    .line 28
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    .line 29
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    .line 31
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleHeight:I

    .line 33
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mTitleTotalTranslationRangeY:F

    .line 36
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mTitleTotalTranslationRangeX:F

    .line 38
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    .line 39
    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

    .line 44
    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    .line 46
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleWidth:I

    .line 47
    iput v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleWidth:I

    .line 59
    iput-object p5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleText:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleText:Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->getCommonParameters(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method private getCommonParameters(Landroid/content/Context;ZZZ)V
    .locals 7

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string p0, "BSGroupTitleBehavior"

    const-string p1, "getCommonParameters, status_bar_height not found !!!"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mStatusBarHeight:I

    .line 127
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    .line 128
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_sink_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarHeight:I

    .line 130
    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarHeight:I

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mStatusBarHeight:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    const-string p0, "BSGroupTitleBehavior"

    const-string p1, "getCommonParameters, Invalid Height of App Bar !!!"

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_1
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_primary_font_size_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    .line 136
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_appbar_sink_primary_font_size_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    .line 137
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_secondary_font02_size_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    if-lt v2, v3, :cond_9

    if-gtz v1, :cond_2

    goto/16 :goto_3

    .line 146
    :cond_2
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    .line 147
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    .line 148
    invoke-static {p1}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTitleViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleWidth:I

    .line 149
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleWidth:I

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleWidth:I

    .line 151
    iget-object v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleText:Ljava/lang/String;

    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/zte/mifavor/utils/SinkUtils;->calculateDesiredTextWidth(Ljava/lang/String;F)I

    move-result v2

    .line 152
    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleWidth:I

    if-le v2, v3, :cond_3

    .line 153
    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    :cond_3
    int-to-float v3, v1

    .line 156
    invoke-static {v3}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleHeight:I

    .line 157
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleHeight:I

    iput v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    .line 158
    iget-object v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleText:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/zte/mifavor/utils/SinkUtils;->calculateDesiredTextWidth(Ljava/lang/String;F)I

    move-result v3

    .line 159
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleWidth:I

    if-le v3, v4, :cond_4

    .line 160
    iget v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    :cond_4
    if-eqz p4, :cond_5

    .line 163
    sget p2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    sget p2, Lcom/zte/extres/R$dimen;->mfvc_list_ic_txt_left_padding:I

    .line 165
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_6
    sget p2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    .line 166
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 167
    :goto_0
    sget v4, Lcom/zte/extres/R$dimen;->mfvc_sink_expanded_title_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v5, p2, v4

    int-to-float v5, v5

    .line 168
    iput v5, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mTitleTotalTranslationRangeX:F

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz p4, :cond_8

    .line 170
    :cond_7
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    int-to-float p3, p3

    iget p4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    :goto_1
    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v5

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_7

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    int-to-float p3, p3

    iget p4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    iget v6, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleHeight:I

    add-int/2addr p4, v6

    goto :goto_1

    :goto_2
    iput p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    .line 174
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    int-to-float p3, p3

    iget p4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    iget p4, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleHeight:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v5

    iput p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

    .line 176
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->getTitleTotalTranslationRangeY()F

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mTitleTotalTranslationRangeY:F

    .line 178
    sget p3, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleTextColor:I

    .line 179
    sget p3, Lcom/zte/extres/R$color;->mfv_common_acb_sink_txt:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleSinkTextColor:I

    const-string p3, "BSGroupTitleBehavior"

    .line 182
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCommonParameters, context="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mToolbarHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAppBarHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mStatusBarHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mStatusBarHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMinPrimaryTitleFontSize="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMaxPrimaryTitleFontSize="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMinPrimaryTitleHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMaxPrimaryTitleHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mPrimaryTitleWidth="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleWidth:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desiredPrimaryTitleWidth="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", secondaryTitleFontSize="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mSecondaryTitleWidth="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleWidth:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desiredSecondaryTitleWidth="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mSecondaryTitleHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mSecondaryTitleHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMaxSecondaryTitleHeight="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", collapsedPaddingX="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expandedPaddingX="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMinPrimaryTitleTranslationY="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mMinSecondaryTitleTranslationY="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mTitleTotalTranslationRangeY="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mTitleTotalTranslationRangeY:F

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mPrimaryTitleTextColor=0x"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleTextColor:I

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPrimaryTitleSinkTextColor=0x"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleSinkTextColor:I

    .line 203
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_3
    const-string p0, "BSGroupTitleBehavior"

    const-string p1, "getCommonParameters, Invalid font size of title !!!"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected abstract getTitleTotalTranslationRangeY()F
.end method

.method protected abstract onCustomDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FIIFI)Z
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 11

    .line 77
    iget v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mTitleTotalTranslationRangeY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-string p0, "BSGroupTitleBehavior"

    const-string p1, "onDependentViewChanged, Invalid scroll Range of page title !!!"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 82
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 83
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    if-gez v2, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    .line 85
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    if-gez v2, :cond_1

    .line 86
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    iget v3, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mToolbarHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    .line 91
    :cond_1
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result v7

    .line 96
    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mAppBarTotalScrollRange:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 98
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getBottom()I

    move-result v8

    .line 100
    iget v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 102
    invoke-static {v9}, Lcom/zte/mifavor/utils/SinkUtils;->calculateTextHeight(F)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleText:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/zte/mifavor/utils/SinkUtils;->calculateDesiredTextWidth(Ljava/lang/String;F)I

    move-result v1

    .line 104
    iget v2, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mPrimaryTitleWidth:I

    if-le v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    :cond_3
    move v10, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 108
    invoke-virtual/range {v2 .. v10}, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->onCustomDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FIIFI)Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "BSGroupTitleBehavior"

    const-string v1, "onDependentViewChanged, all children of the app bar can not scroll !!!"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 113
    iget v0, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    int-to-float v9, v0

    iget v10, p0, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->mMinPrimaryTitleHeight:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v10}, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;->onCustomDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FIIFI)Z

    move-result p0

    return p0
.end method
