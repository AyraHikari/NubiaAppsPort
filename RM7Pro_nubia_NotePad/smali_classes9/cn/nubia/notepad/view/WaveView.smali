.class public Lcn/nubia/notepad/view/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field private baseLinePaint:Landroid/graphics/Paint;

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private drawTime:J

.field private invalidateTime:I

.field private isMaxConstant:Z

.field private mBaseLineColor:I

.field private mHeight:F

.field private mWaveColor:I

.field private mWavePaint:Landroid/graphics/Paint;

.field private mWidth:F

.field private max:S

.field private space:F

.field private waveStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/notepad/view/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/notepad/view/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    .line 18
    const/16 v0, 0x2710

    iput-short v0, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    .line 21
    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    .line 24
    iput v2, p0, Lcn/nubia/notepad/view/WaveView;->mWaveColor:I

    .line 25
    iput v2, p0, Lcn/nubia/notepad/view/WaveView;->mBaseLineColor:I

    .line 26
    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->waveStrokeWidth:F

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/notepad/view/WaveView;->invalidateTime:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/WaveView;->isMaxConstant:Z

    .line 41
    invoke-direct {p0, p2, p3}, Lcn/nubia/notepad/view/WaveView;->init(Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private drawBaseLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 206
    iget v3, p0, Lcn/nubia/notepad/view/WaveView;->mWidth:F

    iget-object v5, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 198
    int-to-float v0, v6

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    mul-float v1, v0, v2

    .line 199
    .local v1, "x":F
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-float v0, v0

    iget-short v2, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->mHeight:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    .line 200
    .local v4, "y":F
    neg-float v2, v4

    iget-object v5, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/notepad/preset/R$styleable;->WaveView:[I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcn/nubia/notepad/view/WaveView;->mWaveColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->mWaveColor:I

    .line 53
    const/4 v1, 0x1

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->mBaseLineColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->mBaseLineColor:I

    .line 57
    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->waveStrokeWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->waveStrokeWidth:F

    .line 61
    const/4 v1, 0x2

    iget-short v2, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    .line 62
    const/4 v1, 0x4

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->invalidateTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->invalidateTime:I

    .line 64
    const/4 v1, 0x5

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-direct {p0}, Lcn/nubia/notepad/view/WaveView;->initPainters()V

    .line 68
    return-void
.end method

.method private initPainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/notepad/view/WaveView;->mWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/notepad/view/WaveView;->waveStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 76
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->mWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/notepad/view/WaveView;->mBaseLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 83
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->baseLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    return-void
.end method


# virtual methods
.method public addData(S)V
    .locals 4
    .param p1, "data"    # S

    .prologue
    .line 155
    if-gez p1, :cond_0

    .line 156
    neg-int v0, p1

    int-to-short p1, v0

    .line 158
    :cond_0
    iget-short v0, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/notepad/view/WaveView;->isMaxConstant:Z

    if-nez v0, :cond_1

    .line 159
    iput-short p1, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    .line 161
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/notepad/view/WaveView;->mWidth:F

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/notepad/view/WaveView;->drawTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcn/nubia/notepad/view/WaveView;->invalidateTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->invalidate()V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/notepad/view/WaveView;->drawTime:J

    .line 174
    :cond_2
    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 167
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/notepad/view/WaveView;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->invalidateNow()V

    .line 179
    return-void
.end method

.method public getInvalidateTime()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcn/nubia/notepad/view/WaveView;->invalidateTime:I

    return v0
.end method

.method public getMax()S
    .locals 1

    .prologue
    .line 87
    iget-short v0, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    return v0
.end method

.method public getSpace()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    return v0
.end method

.method public getWaveStrokeWidth()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcn/nubia/notepad/view/WaveView;->waveStrokeWidth:F

    return v0
.end method

.method public getmBaseLineColor()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcn/nubia/notepad/view/WaveView;->mBaseLineColor:I

    return v0
.end method

.method public getmWaveColor()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcn/nubia/notepad/view/WaveView;->mWaveColor:I

    return v0
.end method

.method public invalidateNow()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcn/nubia/notepad/view/WaveView;->initPainters()V

    .line 150
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->invalidate()V

    .line 151
    return-void
.end method

.method public isMaxConstant()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcn/nubia/notepad/view/WaveView;->isMaxConstant:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 184
    const/4 v0, 0x0

    iget v1, p0, Lcn/nubia/notepad/view/WaveView;->mHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/WaveView;->drawBaseLine(Landroid/graphics/Canvas;)V

    .line 186
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/WaveView;->drawWave(Landroid/graphics/Canvas;)V

    .line 188
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 192
    int-to-float v0, p1

    iput v0, p0, Lcn/nubia/notepad/view/WaveView;->mWidth:F

    .line 193
    int-to-float v0, p2

    iput v0, p0, Lcn/nubia/notepad/view/WaveView;->mHeight:F

    .line 194
    return-void
.end method

.method public setInvalidateTime(I)V
    .locals 0
    .param p1, "invalidateTime"    # I

    .prologue
    .line 134
    iput p1, p0, Lcn/nubia/notepad/view/WaveView;->invalidateTime:I

    .line 135
    return-void
.end method

.method public setMax(S)V
    .locals 0
    .param p1, "max"    # S

    .prologue
    .line 91
    iput-short p1, p0, Lcn/nubia/notepad/view/WaveView;->max:S

    .line 92
    return-void
.end method

.method public setMaxConstant(Z)V
    .locals 0
    .param p1, "maxConstant"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcn/nubia/notepad/view/WaveView;->isMaxConstant:Z

    .line 143
    return-void
.end method

.method public setSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 99
    iput p1, p0, Lcn/nubia/notepad/view/WaveView;->space:F

    .line 100
    return-void
.end method

.method public setWaveStrokeWidth(F)V
    .locals 0
    .param p1, "waveStrokeWidth"    # F

    .prologue
    .line 125
    iput p1, p0, Lcn/nubia/notepad/view/WaveView;->waveStrokeWidth:F

    .line 126
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->invalidateNow()V

    .line 127
    return-void
.end method

.method public setmBaseLineColor(I)V
    .locals 0
    .param p1, "mBaseLineColor"    # I

    .prologue
    .line 116
    iput p1, p0, Lcn/nubia/notepad/view/WaveView;->mBaseLineColor:I

    .line 117
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->invalidateNow()V

    .line 118
    return-void
.end method

.method public setmWaveColor(I)V
    .locals 0
    .param p1, "mWaveColor"    # I

    .prologue
    .line 107
    iput p1, p0, Lcn/nubia/notepad/view/WaveView;->mWaveColor:I

    .line 108
    invoke-virtual {p0}, Lcn/nubia/notepad/view/WaveView;->invalidateNow()V

    .line 109
    return-void
.end method
