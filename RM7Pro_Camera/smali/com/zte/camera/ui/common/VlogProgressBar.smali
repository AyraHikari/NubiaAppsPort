.class public Lcom/zte/camera/ui/common/VlogProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/VlogProgressBar$b;,
        Lcom/zte/camera/ui/common/VlogProgressBar$a;
    }
.end annotation


# instance fields
.field a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/RectF;

.field private m:Lcom/zte/camera/ui/common/VlogProgressBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    .line 24
    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    .line 25
    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->k:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    .line 34
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->l:Landroid/graphics/RectF;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/common/VlogProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(F)I
    .locals 3

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 182
    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->c(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget p1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/nubia/a/a$j;->al:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/nubia/a/a$j;->aq:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->b:I

    .line 43
    sget p2, Lcom/nubia/a/a$j;->ao:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->c:I

    .line 44
    sget p2, Lcom/nubia/a/a$j;->ap:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->d:I

    .line 45
    sget p2, Lcom/nubia/a/a$j;->an:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->e:I

    .line 46
    sget p2, Lcom/nubia/a/a$j;->am:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->f:I

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a([F)[F
    .locals 7

    .line 68
    array-length v0, p1

    .line 69
    new-array v1, v0, [F

    .line 71
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    aget v6, p1, v5

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    .line 75
    aget v2, p1, v3

    div-float/2addr v2, v4

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private getNextSegment()I
    .locals 3

    .line 190
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 191
    :goto_0
    iget v2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    if-ge v1, v2, :cond_1

    .line 192
    rem-int/2addr v0, v2

    .line 193
    iget-object v2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 82
    invoke-static {v4, v2}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iput v2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    .line 85
    iput v2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    .line 86
    iput v2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->k:I

    .line 87
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getFocusSegment()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;Z)Z

    .line 93
    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->k:I

    .line 94
    invoke-direct {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getNextSegment()I

    move-result v0

    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    .line 95
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    .line 96
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getFocusSegment()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;Z)Z

    .line 109
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    .line 110
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->invalidate()V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    iget v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 118
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    iget v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFocusSegment()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    return v0
.end method

.method public getFocusSegmentX()I
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    iget v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v0

    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    iget v2, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->c(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRecordedNum()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->j:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getWidth()I

    move-result v0

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getHeight()I

    move-result v2

    .line 133
    iget v3, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    add-int/lit8 v3, v3, -0x1

    iget v4, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->f:I

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 134
    div-int/lit8 v2, v2, 0x2

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    .line 136
    :goto_0
    iget v5, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    if-ge v4, v5, :cond_5

    .line 137
    iget-object v5, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    aget-object v5, v5, v4

    .line 138
    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->d(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v6

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 139
    iget-object v7, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    iget v8, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    if-ne v8, v4, :cond_0

    iget v8, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->c:I

    :goto_1
    int-to-float v8, v8

    goto :goto_2

    :cond_0
    iget v8, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->b:I

    goto :goto_1

    :goto_2
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget v7, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    if-ne v7, v4, :cond_1

    iget v7, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->c:I

    :goto_3
    div-int/lit8 v7, v7, 0x2

    goto :goto_4

    :cond_1
    iget v7, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->b:I

    goto :goto_3

    :goto_4
    add-int/2addr v6, v3

    int-to-float v3, v3

    .line 142
    invoke-static {v5, v3}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;F)F

    int-to-float v3, v6

    .line 143
    invoke-static {v5, v3}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;F)F

    .line 144
    iget v3, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->f:I

    add-int/2addr v3, v6

    .line 145
    iget-object v6, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->a(Lcom/zte/camera/ui/common/VlogProgressBar$b;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->e:I

    goto :goto_5

    :cond_2
    iget v8, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->d:I

    :goto_5
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    if-nez v4, :cond_3

    .line 147
    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v6

    int-to-float v8, v7

    add-float/2addr v6, v8

    .line 148
    iget-object v9, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->l:Landroid/graphics/RectF;

    sub-float v10, v6, v8

    sub-int v11, v2, v7

    int-to-float v11, v11

    add-float/2addr v6, v8

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {v9, v10, v11, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    iget-object v13, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->l:Landroid/graphics/RectF;

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v15, 0x43340000    # 180.0f

    const/16 v16, 0x1

    iget-object v6, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 150
    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v6

    add-float v10, v6, v8

    int-to-float v13, v2

    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->c(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v12

    iget-object v14, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v13

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 151
    :cond_3
    iget v6, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_4

    .line 152
    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v9

    int-to-float v12, v2

    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->c(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v6

    int-to-float v14, v7

    sub-float v11, v6, v14

    iget-object v13, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->c(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v5

    sub-float/2addr v5, v14

    .line 154
    iget-object v6, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->l:Landroid/graphics/RectF;

    sub-float v8, v5, v14

    sub-int v9, v2, v7

    int-to-float v9, v9

    add-float/2addr v5, v14

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {v6, v8, v9, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget-object v11, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->l:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x1

    iget-object v15, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_6

    .line 157
    :cond_4
    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->b(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v6

    int-to-float v9, v2

    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogProgressBar$b;->c(Lcom/zte/camera/ui/common/VlogProgressBar$b;)F

    move-result v8

    iget-object v10, v1, Lcom/zte/camera/ui/common/VlogProgressBar;->g:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 160
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 166
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogProgressBar;->a(F)I

    move-result p1

    .line 167
    iget v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    if-eq p1, v0, :cond_0

    .line 168
    iput p1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->i:I

    .line 169
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->m:Lcom/zte/camera/ui/common/VlogProgressBar$a;

    invoke-interface {p1}, Lcom/zte/camera/ui/common/VlogProgressBar$a;->j()V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->invalidate()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setProgressBarListener(Lcom/zte/camera/ui/common/VlogProgressBar$a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->m:Lcom/zte/camera/ui/common/VlogProgressBar$a;

    return-void
.end method

.method public setProgressBarsArray([F)V
    .locals 4

    .line 59
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogProgressBar;->a([F)[F

    move-result-object p1

    .line 60
    array-length v0, p1

    iput v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    .line 61
    new-array v0, v0, [Lcom/zte/camera/ui/common/VlogProgressBar$b;

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->h:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogProgressBar;->a:[Lcom/zte/camera/ui/common/VlogProgressBar$b;

    new-instance v2, Lcom/zte/camera/ui/common/VlogProgressBar$b;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Lcom/zte/camera/ui/common/VlogProgressBar$b;-><init>(F)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
