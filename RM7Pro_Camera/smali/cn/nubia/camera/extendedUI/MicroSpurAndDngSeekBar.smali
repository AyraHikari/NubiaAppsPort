.class public Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

.field private B:Z

.field private C:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:Landroid/graphics/Bitmap;

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 26
    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->g:I

    const/16 p2, 0x4c

    const/16 v0, 0xff

    .line 34
    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->h:I

    const/4 p2, -0x1

    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->i:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->j:I

    .line 34
    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->k:I

    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->l:I

    const/16 v1, 0xaa

    const/16 v3, 0x33

    .line 39
    invoke-static {v0, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->m:I

    .line 44
    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->n:I

    const-string p2, "Auto"

    const-string v0, "30"

    .line 48
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->p:[Ljava/lang/String;

    const/16 p2, 0x28

    .line 50
    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    .line 52
    iput v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    .line 53
    iget p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    .line 63
    iput v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->z:Z

    .line 69
    iput-boolean v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->B:Z

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->b:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->c:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->d:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->e:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->f:I

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    .line 92
    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    .line 96
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080284

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->q:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060038

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->C:I

    return-void
.end method

.method private a(F)F
    .locals 1

    .line 177
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->x:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private a(I)I
    .locals 1

    .line 285
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->c(I)I

    move-result p1

    return p1

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->b(I)I

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1

    .line 217
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private b(F)I
    .locals 4

    .line 185
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 187
    :cond_0
    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 188
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    return p1

    .line 190
    :cond_1
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 191
    :goto_0
    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    add-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_3

    int-to-float v1, v2

    .line 192
    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->x:F

    mul-float/2addr v1, v3

    sub-float v1, p1, v1

    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_3
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    return p1
.end method

.method private b(I)I
    .locals 1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->c(Landroid/graphics/Canvas;)V

    .line 222
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->d(Landroid/graphics/Canvas;)V

    .line 223
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private c(F)F
    .locals 3

    .line 207
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    int-to-float p1, v0

    goto :goto_1

    .line 209
    :cond_0
    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    add-int v2, v0, v1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private c(I)I
    .locals 2

    .line 301
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    add-int/lit8 v1, v0, -0x5

    if-le p1, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0xa

    if-le p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0xa

    :goto_0
    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float v2, v0

    iget v5, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v6, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 7

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    .line 233
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    add-int/2addr v0, v1

    :cond_0
    int-to-float v2, v0

    .line 234
    iget v5, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    iget v4, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    iget-object v6, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->b:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(I)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 241
    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    if-eq v2, v3, :cond_0

    .line 242
    iget-object v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->c:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 244
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->e:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->p:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->p:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    iget v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;I)V
    .locals 3

    .line 317
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 320
    aget-object v1, p1, v0

    .line 321
    aget-object v2, p1, p2

    aput-object v2, p1, v0

    .line 322
    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    .line 132
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->B:Z

    .line 133
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    if-eqz p1, :cond_3

    .line 134
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(I)I

    move-result p1

    .line 135
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    iget-object v4, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->o:Ljava/lang/String;

    iget v5, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->n:I

    if-ne v5, v3, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-interface {v1, v4, p1, v5, v0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;->a(Ljava/lang/String;IZI)V

    .line 137
    :cond_3
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_4

    .line 138
    iput v2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    if-ge p1, v1, :cond_5

    .line 140
    iput v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    .line 142
    :cond_5
    :goto_1
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(F)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    .line 143
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->n:I

    if-ne p1, v3, :cond_6

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    if-eqz v1, :cond_6

    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    if-lt v1, v0, :cond_7

    :cond_6
    if-nez p1, :cond_b

    iget-object p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    if-eqz p1, :cond_b

    .line 145
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    invoke-interface {p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;->b()V

    goto :goto_2

    .line 149
    :cond_8
    iput-boolean v3, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->B:Z

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    if-eqz v1, :cond_9

    .line 151
    invoke-interface {v1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;->a()V

    .line 154
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->c(F)F

    move-result v1

    iput v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->b(F)I

    move-result p1

    .line 156
    iget v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    if-eq p1, v1, :cond_b

    .line 157
    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    .line 158
    iget-boolean v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->z:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    if-eqz v1, :cond_b

    .line 159
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(I)I

    move-result p1

    .line 160
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    iget-object v4, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->o:Ljava/lang/String;

    iget v5, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->n:I

    if-ne v5, v3, :cond_a

    move v2, v3

    :cond_a
    invoke-interface {v1, v4, p1, v2, v0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;->a(Ljava/lang/String;IZI)V

    .line 168
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->invalidate()V

    return v3
.end method

.method public getValue()I
    .locals 1

    .line 353
    iget v0, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(I)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(Landroid/graphics/Canvas;)V

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->b(Landroid/graphics/Canvas;)V

    .line 120
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->f(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 105
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 106
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    .line 107
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_0

    .line 108
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    .line 110
    :cond_0
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->u:I

    int-to-float p1, p1

    iget p2, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->r:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->x:F

    sub-int/2addr p5, p3

    shr-int/lit8 p1, p5, 0x1

    int-to-float p1, p1

    .line 111
    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->w:F

    .line 112
    iget p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->y:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a(F)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->v:F

    return-void
.end method

.method public setEnteries([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 311
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 312
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->p:[Ljava/lang/String;

    .line 313
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->a([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setValueChanged(Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar;->A:Lcn/nubia/camera/extendedUI/MicroSpurAndDngSeekBar$a;

    return-void
.end method
