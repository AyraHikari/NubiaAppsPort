.class public Lcn/nubia/gallery3d/app/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final SCRUBBER_PADDING_IN_DP:I = 0xa

.field private static final TEXT_SIZE_IN_DP:I = 0xe

.field private static final V_PADDING_IN_DP:I = 0x1e


# instance fields
.field private currentTime:I

.field private final listener:Lcn/nubia/gallery3d/app/TimeBar$Listener;

.field private final playedBar:Landroid/graphics/Rect;

.field private final playedPaint:Landroid/graphics/Paint;

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private final scrubber:Landroid/graphics/Bitmap;

.field private scrubberCorrection:I

.field private scrubberLeft:I

.field private final scrubberPadding:I

.field private scrubberTop:I

.field private scrubbing:Z

.field private showScrubber:Z

.field private showTimes:Z

.field private final timeBounds:Landroid/graphics/Rect;

.field private final timeTextPaint:Landroid/graphics/Paint;

.field private totalTime:I

.field private vPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/app/TimeBar$Listener;)V
    .locals 4

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/app/TimeBar$Listener;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->listener:Lcn/nubia/gallery3d/app/TimeBar$Listener;

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->showTimes:Z

    .line 84
    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->showScrubber:Z

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    .line 90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 95
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    .line 96
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const p2, -0x313132

    .line 97
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    const-string v0, "0:00:00"

    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 102
    invoke-virtual {v1, v0, v2, v3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0801eb

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    .line 105
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberPadding:I

    .line 107
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->vPaddingInPx:I

    return-void
.end method

.method private clampScrubber()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 176
    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 177
    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    .line 178
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    return-void
.end method

.method private getScrubberTime()I
    .locals 4

    .line 182
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 183
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .locals 4

    .line 168
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    iget v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberTop:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 170
    iget v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    iget v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberTop:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    add-int/2addr v1, v3

    int-to-float p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 5

    long-to-int p1, p1

    .line 272
    div-int/lit16 p1, p1, 0x3e8

    .line 273
    rem-int/lit8 p2, p1, 0x3c

    .line 274
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 275
    div-int/lit16 p1, p1, 0xe10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez p1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "%d:%02d:%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private update()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->totalTime:I

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcn/nubia/gallery3d/app/TimeBar;->currentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcn/nubia/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 208
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 215
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->showScrubber:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->showTimes:Z

    if-eqz v0, :cond_1

    .line 219
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->currentTime:I

    int-to-long v0, v0

    .line 220
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    .line 219
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v0, v0

    .line 225
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 227
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getBarHeight()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->vPaddingInPx:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredHeight()I
    .locals 2

    .line 130
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->vPaddingInPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 190
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->showTimes:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->showScrubber:Z

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 194
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->showTimes:Z

    if-eqz p2, :cond_1

    .line 195
    iget-object p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p1, p2

    .line 197
    :cond_1
    iget p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    .line 198
    iget-object p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int p2, p5, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberTop:I

    .line 199
    iget-object p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 200
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p1

    .line 201
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    sub-int/2addr p4, p1

    add-int/lit8 p1, p5, 0x4

    .line 199
    invoke-virtual {p2, p3, p5, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeBar;->update()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 235
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->showScrubber:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 249
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz p1, :cond_3

    .line 250
    iget p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberCorrection:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 251
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeBar;->clampScrubber()V

    .line 252
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->currentTime:I

    .line 253
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->listener:Lcn/nubia/gallery3d/app/TimeBar$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 254
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->invalidate()V

    return v3

    .line 260
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz p1, :cond_3

    .line 261
    iget-object p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->listener:Lcn/nubia/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(I)V

    .line 262
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    return v3

    :cond_2
    int-to-float p1, v0

    int-to-float v2, v2

    .line 241
    invoke-direct {p0, p1, v2}, Lcn/nubia/gallery3d/app/TimeBar;->inScrubber(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 242
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    .line 243
    iget p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubberCorrection:I

    .line 244
    iget-object p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->listener:Lcn/nubia/gallery3d/app/TimeBar$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public resetTime()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0, v0}, Lcn/nubia/gallery3d/app/TimeBar;->setTime(II)V

    return-void
.end method

.method public setShowScrubber(Z)V
    .locals 1

    .line 159
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->showScrubber:Z

    if-nez p1, :cond_0

    .line 160
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->listener:Lcn/nubia/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(I)V

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->scrubbing:Z

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->requestLayout()V

    return-void
.end method

.method public setShowTimes(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->showTimes:Z

    .line 151
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/TimeBar;->requestLayout()V

    return-void
.end method

.method public setTime(II)V
    .locals 1

    .line 141
    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->currentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/TimeBar;->totalTime:I

    if-ne v0, p2, :cond_0

    return-void

    .line 144
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/app/TimeBar;->currentTime:I

    .line 145
    iput p2, p0, Lcn/nubia/gallery3d/app/TimeBar;->totalTime:I

    .line 146
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeBar;->update()V

    return-void
.end method
