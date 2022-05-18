.class public Lcom/zte/mifavor/utils/SinkUtils;
.super Ljava/lang/Object;
.source "SinkUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PAINT_FOR_CALCULATE:Landroid/graphics/Paint;

.field private static final TAG:Ljava/lang/String; = "SinkUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zte/mifavor/utils/SinkUtils;->PAINT_FOR_CALCULATE:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDesiredTextWidth(Ljava/lang/String;F)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    sget-object v0, Lcom/zte/mifavor/utils/SinkUtils;->PAINT_FOR_CALCULATE:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    sget-object p1, Lcom/zte/mifavor/utils/SinkUtils;->PAINT_FOR_CALCULATE:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static calculateTextHeight(F)I
    .locals 2

    .line 41
    sget-object v0, Lcom/zte/mifavor/utils/SinkUtils;->PAINT_FOR_CALCULATE:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    sget-object p0, Lcom/zte/mifavor/utils/SinkUtils;->PAINT_FOR_CALCULATE:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 43
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static calculateTitleViewWidth(Landroid/content/Context;)I
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SinkUtils"

    const-string v0, "calculateTitleViewWidth, context is null !!!"

    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/zte/mifavor/utils/SinkUtils;->isLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    sget v0, Lcom/zte/extres/R$dimen;->mfvc_appbar_primary_title_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 34
    :cond_1
    sget v0, Lcom/zte/extres/R$dimen;->mfvc_appbar_primary_title_width_landscape:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static isLandscape(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
