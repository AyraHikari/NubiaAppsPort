.class public Lcn/nubia/music/ui/CircleMusicView;
.super Landroid/view/View;
.source "CircleMusicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/CircleMusicView$a;
    }
.end annotation


# static fields
.field private static final CIRCLE_COUNT:I = 0x7

.field private static TIME_INTERVAL:I


# instance fields
.field private CIRCLE_TRANSPARENT:[I

.field private Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

.field private PAUSE:Z

.field private mCount:D

.field private mCurrentAlbumColorHue:I

.field private mFlag:Z

.field private mIsFirstDraw:Z

.field private mLock:Ljava/lang/Object;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x1e

    sput v0, Lcn/nubia/music/ui/CircleMusicView;->TIME_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    .line 33
    iput-boolean v2, p0, Lcn/nubia/music/ui/CircleMusicView;->mFlag:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    .line 40
    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCurrentAlbumColorHue:I

    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/music/ui/CircleMusicView;->CIRCLE_TRANSPARENT:[I

    .line 137
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/nubia/music/ui/CircleMusicView$a;

    iput-object v0, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    .line 138
    iput-boolean v2, p0, Lcn/nubia/music/ui/CircleMusicView;->mIsFirstDraw:Z

    .line 160
    return-void

    .line 134
    :array_0
    .array-data 4
        0x33
        0x66
        0x99
        0x66
        0x33
        0x42
        0x1a
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const-wide v12, 0x40191eb851eb851fL    # 6.28

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const/4 v0, 0x0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-boolean v1, p0, Lcn/nubia/music/ui/CircleMusicView;->mIsFirstDraw:Z

    if-eqz v1, :cond_0

    .line 51
    iput-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mIsFirstDraw:Z

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 55
    int-to-float v2, v1

    int-to-float v1, v1

    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 57
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 59
    const/high16 v2, 0x41a00000    # 20.0f

    div-float v2, v1, v2

    .line 60
    const/4 v3, 0x7

    new-array v3, v3, [F

    aput v1, v3, v0

    const v4, 0x3f5c28f6    # 0.86f

    mul-float/2addr v4, v1

    aput v4, v3, v5

    const/4 v4, 0x2

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v1

    aput v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v1

    aput v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v1

    aput v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x3f2e147b    # 0.68f

    mul-float/2addr v5, v1

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x3f23d70a    # 0.64f

    mul-float/2addr v1, v5

    aput v1, v3, v4

    move v1, v0

    .line 64
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_0

    .line 65
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    new-instance v5, Lcn/nubia/music/ui/CircleMusicView$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcn/nubia/music/ui/CircleMusicView$a;-><init>(Lcn/nubia/music/ui/CircleMusicView;Lcn/nubia/music/ui/CircleMusicView$1;)V

    aput-object v5, v4, v1

    .line 66
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    aget v5, v3, v1

    iput v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->b:F

    .line 67
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcn/nubia/music/ui/CircleMusicView;->CIRCLE_TRANSPARENT:[I

    aget v5, v5, v1

    iput v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->a:I

    .line 68
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    mul-int/lit8 v5, v1, 0x5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iput v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->c:F

    .line 69
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcn/nubia/music/ui/CircleMusicView$a;->d:D

    .line 70
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcn/nubia/music/ui/CircleMusicView$a;->e:D

    .line 71
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcn/nubia/music/ui/CircleMusicView$a;->f:D

    .line 72
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcn/nubia/music/ui/CircleMusicView$a;->g:D

    .line 73
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->h:Ljava/lang/Double;

    .line 74
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->i:Ljava/lang/Double;

    .line 75
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->j:Ljava/lang/Double;

    .line 76
    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/music/ui/CircleMusicView$a;->k:Ljava/lang/Double;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 92
    :cond_0
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 93
    :try_start_0
    iget-wide v2, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcn/nubia/music/ui/CircleMusicView$a;->d:D

    div-double/2addr v2, v4

    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcn/nubia/music/ui/CircleMusicView$a;->h:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v1, v1, v0

    iget-wide v6, v1, Lcn/nubia/music/ui/CircleMusicView$a;->e:D

    div-double/2addr v4, v6

    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcn/nubia/music/ui/CircleMusicView$a;->i:Ljava/lang/Double;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v1, v1, v0

    iget v1, v1, Lcn/nubia/music/ui/CircleMusicView$a;->c:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 95
    iget-wide v2, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcn/nubia/music/ui/CircleMusicView$a;->f:D

    div-double/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcn/nubia/music/ui/CircleMusicView$a;->j:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    iget-object v6, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v6, v6, v0

    iget-wide v6, v6, Lcn/nubia/music/ui/CircleMusicView$a;->g:D

    div-double/2addr v4, v6

    iget-object v6, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcn/nubia/music/ui/CircleMusicView$a;->k:Ljava/lang/Double;

    .line 96
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v0

    iget v4, v4, Lcn/nubia/music/ui/CircleMusicView$a;->c:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 99
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    .line 100
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    .line 103
    :cond_1
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/nubia/music/ui/CircleMusicView;->mCurrentAlbumColorHue:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v4, v4, v0

    iget v4, v4, Lcn/nubia/music/ui/CircleMusicView$a;->a:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v3, p0, Lcn/nubia/music/ui/CircleMusicView;->Circles:[Lcn/nubia/music/ui/CircleMusicView$a;

    aget-object v3, v3, v0

    iget v3, v3, Lcn/nubia/music/ui/CircleMusicView$a;->b:F

    iget-object v4, p0, Lcn/nubia/music/ui/CircleMusicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 111
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mFlag:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    add-double/2addr v0, v10

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mFlag:Z

    .line 114
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mFlag:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    sub-double/2addr v0, v10

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_4

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mFlag:Z

    .line 117
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mFlag:Z

    if-eqz v0, :cond_6

    .line 118
    iget-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    add-double/2addr v0, v10

    iput-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 126
    :goto_2
    iget-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    if-nez v0, :cond_5

    .line 127
    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_1
    sget v0, Lcn/nubia/music/ui/CircleMusicView;->TIME_INTERVAL:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcn/nubia/music/ui/CircleMusicView;->postInvalidateDelayed(J)V

    .line 129
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :cond_5
    :goto_3
    return-void

    .line 120
    :cond_6
    :try_start_2
    iget-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D

    sub-double/2addr v0, v10

    iput-wide v0, p0, Lcn/nubia/music/ui/CircleMusicView;->mCount:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 122
    :catch_0
    move-exception v0

    .line 124
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    iget-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    if-nez v0, :cond_5

    .line 127
    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_4
    sget v0, Lcn/nubia/music/ui/CircleMusicView;->TIME_INTERVAL:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcn/nubia/music/ui/CircleMusicView;->postInvalidateDelayed(J)V

    .line 129
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 126
    :catchall_2
    move-exception v0

    iget-boolean v1, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    if-nez v1, :cond_7

    .line 127
    iget-object v1, p0, Lcn/nubia/music/ui/CircleMusicView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_6
    sget v2, Lcn/nubia/music/ui/CircleMusicView;->TIME_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcn/nubia/music/ui/CircleMusicView;->postInvalidateDelayed(J)V

    .line 129
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_7
    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public pauseCircleSurfaceView()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    .line 169
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/music/ui/CircleMusicView;->mCurrentAlbumColorHue:I

    .line 44
    return-void
.end method

.method public startCircleSurfaceView()V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/CircleMusicView;->PAUSE:Z

    .line 174
    sget v0, Lcn/nubia/music/ui/CircleMusicView;->TIME_INTERVAL:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/CircleMusicView;->postInvalidateDelayed(J)V

    .line 176
    :cond_0
    return-void
.end method
