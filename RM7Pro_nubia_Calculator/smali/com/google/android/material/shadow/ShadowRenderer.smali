.class public Lcom/google/android/material/shadow/ShadowRenderer;
.super Ljava/lang/Object;
.source "ShadowRenderer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final COLOR_ALPHA_END:I = 0x0

.field private static final COLOR_ALPHA_MIDDLE:I = 0x14

.field private static final COLOR_ALPHA_START:I = 0x44

.field private static final cornerColors:[I

.field private static final cornerPositions:[F

.field private static final edgeColors:[I

.field private static final edgePositions:[F


# instance fields
.field private final cornerShadowPaint:Landroid/graphics/Paint;

.field private final edgeShadowPaint:Landroid/graphics/Paint;

.field private final scratch:Landroid/graphics/Path;

.field private shadowEndColor:I

.field private shadowMiddleColor:I

.field private final shadowPaint:Landroid/graphics/Paint;

.field private shadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 57
    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    .line 59
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    const/4 v0, 0x4

    .line 61
    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 63
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x1000000

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 75
    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    .line 78
    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 127
    :goto_0
    iget-object v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v4, :cond_1

    .line 130
    sget-object v10, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    aput v6, v10, v6

    .line 131
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    iget v10, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v10, v6, v5

    .line 132
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    iget v10, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v10, v6, v9

    .line 133
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    iget v10, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v10, v6, v8

    move/from16 v10, p5

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v10, p5

    .line 138
    invoke-virtual {v7, v1, v10, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 139
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    neg-int v11, v2

    int-to-float v11, v11

    .line 141
    invoke-virtual {v1, v11, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 142
    sget-object v11, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    aput v6, v11, v6

    .line 143
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    iget v11, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v11, v6, v5

    .line 144
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    iget v11, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v11, v6, v9

    .line 145
    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    iget v11, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v11, v6, v8

    :goto_1
    int-to-float v2, v2

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    div-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    sub-float/2addr v6, v2

    div-float/2addr v6, v8

    add-float/2addr v6, v2

    .line 150
    sget-object v11, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    aput v2, v11, v5

    .line 151
    sget-object v2, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    aput v6, v2, v9

    .line 153
    iget-object v2, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RadialGradient;

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v14, v6, v8

    sget-object v15, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    sget-object v16, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 153
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-nez v4, :cond_2

    .line 168
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v6, p1

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v6, p1

    :goto_2
    const/4 v4, 0x1

    .line 171
    iget-object v5, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .locals 9

    .line 91
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p4

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    neg-int p4, p4

    int-to-float p4, p4

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p3, v0, p4}, Landroid/graphics/RectF;->offset(FF)V

    .line 94
    sget-object p4, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    const/4 v1, 0x0

    aput v0, p4, v1

    .line 95
    sget-object p4, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    const/4 v1, 0x1

    aput v0, p4, v1

    .line 96
    sget-object p4, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    iget v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    const/4 v1, 0x2

    aput v0, p4, v1

    .line 98
    iget-object p4, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 110
    iget-object p0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getShadowPaint()Landroid/graphics/Paint;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public setShadowColor(I)V
    .locals 1

    const/16 v0, 0x44

    .line 84
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    const/16 v0, 0x14

    .line 85
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    return-void
.end method
