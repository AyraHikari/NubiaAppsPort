.class Lcom/zte/camera/ui/common/ProgressDrawable$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/ProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/ProgressDrawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

.field private o:Lcom/zte/camera/ui/common/ProgressDrawable$a;


# direct methods
.method public constructor <init>(Lcom/zte/camera/ui/common/ProgressDrawable;I)V
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->b:I

    .line 221
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    .line 222
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    .line 223
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    .line 224
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->f:I

    .line 225
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->g:I

    .line 226
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    .line 227
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    .line 228
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    .line 229
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->k:I

    .line 230
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->l:I

    .line 231
    iput v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->m:I

    .line 236
    sget-object v0, Lcom/zte/camera/ui/common/ProgressDrawable$b;->a:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    iput-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    .line 237
    iput p2, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->b:I

    .line 238
    new-instance v0, Lcom/zte/camera/ui/common/ProgressDrawable$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p2}, Lcom/zte/camera/ui/common/ProgressDrawable$a;-><init>(Lcom/zte/camera/ui/common/ProgressDrawable;I)V

    iput-object v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->o:Lcom/zte/camera/ui/common/ProgressDrawable$a;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 242
    iget-object v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->o:Lcom/zte/camera/ui/common/ProgressDrawable$a;

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->a(F)F

    move-result v2

    .line 243
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;)F

    move-result v3

    add-float/2addr v3, v2

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    .line 244
    iget-object v5, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v5}, Lcom/zte/camera/ui/common/ProgressDrawable;->d(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v7}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v7

    int-to-double v7, v7

    float-to-double v9, v3

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    .line 245
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->f(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    .line 246
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    .line 247
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->d(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;)F

    move-result v3

    float-to-double v9, v3

    mul-double/2addr v9, v11

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->f:I

    .line 248
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->f(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;)F

    move-result v3

    float-to-double v9, v3

    mul-double/2addr v9, v11

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->g:I

    .line 249
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->d(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;)F

    move-result v3

    add-float/2addr v3, v4

    float-to-double v9, v3

    mul-double/2addr v9, v11

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    .line 250
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->f(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;)F

    move-result v3

    add-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v3, v11

    div-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v7, v3

    sub-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    .line 251
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->o:Lcom/zte/camera/ui/common/ProgressDrawable$a;

    invoke-virtual {v3, v1}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->e(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    .line 252
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->o:Lcom/zte/camera/ui/common/ProgressDrawable$a;

    invoke-virtual {v3, v1}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->b(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->k:I

    .line 253
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->o:Lcom/zte/camera/ui/common/ProgressDrawable$a;

    invoke-virtual {v3, v1}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->d(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->l:I

    .line 254
    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->o:Lcom/zte/camera/ui/common/ProgressDrawable$a;

    invoke-virtual {v3, v1}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->m:I

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    .line 256
    sget-object v1, Lcom/zte/camera/ui/common/ProgressDrawable$b;->a:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    iput-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43a00000    # 320.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    .line 258
    sget-object v1, Lcom/zte/camera/ui/common/ProgressDrawable$b;->e:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    iput-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x438c0000    # 280.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    .line 260
    sget-object v1, Lcom/zte/camera/ui/common/ProgressDrawable$b;->d:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    iput-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    goto :goto_0

    .line 262
    :cond_2
    sget-object v1, Lcom/zte/camera/ui/common/ProgressDrawable$b;->c:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    iput-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 268
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->k:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 269
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    sget-object v1, Lcom/zte/camera/ui/common/ProgressDrawable$2;->a:[I

    iget-object v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->n:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    invoke-virtual {v3}, Lcom/zte/camera/ui/common/ProgressDrawable$b;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 298
    :cond_0
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 299
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->b:I

    if-lez v1, :cond_2

    .line 300
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->h(Lcom/zte/camera/ui/common/ProgressDrawable;)Lcom/zte/camera/ui/common/a;

    move-result-object v1

    iget v7, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    iget v8, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    iget v9, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    iget v10, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    iget v11, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    iget v12, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    iget-object v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v15

    const v16, 0x3f666666    # 0.9f

    const/high16 v17, 0x40000000    # 2.0f

    iget-object v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v2

    move-object/from16 v18, v15

    int-to-double v14, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v14, v5

    mul-double/2addr v14, v3

    double-to-float v14, v14

    move-object/from16 v2, p1

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, v12

    move-object/from16 v9, v18

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v14

    invoke-virtual/range {v1 .. v12}, Lcom/zte/camera/ui/common/a;->a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;FFF)V

    .line 302
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 303
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->i(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->j(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->k(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    if-eq v1, v2, :cond_3

    .line 304
    :cond_1
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 305
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;I)I

    .line 306
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;I)I

    .line 307
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->c(Lcom/zte/camera/ui/common/ProgressDrawable;I)I

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 314
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    move-object v14, v2

    check-cast v14, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_2

    .line 294
    :cond_4
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 295
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 291
    :cond_5
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 272
    :cond_6
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 273
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->b:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_8

    .line 274
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->h(Lcom/zte/camera/ui/common/ProgressDrawable;)Lcom/zte/camera/ui/common/a;

    move-result-object v1

    iget v7, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->f:I

    iget v8, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->g:I

    iget v9, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    iget v10, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    iget v11, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    iget v12, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    iget-object v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v14

    const v15, 0x3f666666    # 0.9f

    const/high16 v16, 0x40000000    # 2.0f

    iget-object v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->e(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v2

    int-to-double v3, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    double-to-float v6, v3

    move-object/from16 v2, p1

    move v3, v7

    move v4, v8

    move v5, v9

    move/from16 v17, v6

    move v6, v10

    move v7, v11

    move v8, v12

    move-object v9, v14

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-virtual/range {v1 .. v12}, Lcom/zte/camera/ui/common/a;->a(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;FFF)V

    .line 276
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->e:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 277
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->i(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->j(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->k(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    if-eq v1, v2, :cond_9

    .line 278
    :cond_7
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->h:I

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->a(Lcom/zte/camera/ui/common/ProgressDrawable;I)I

    .line 280
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->i:I

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;I)I

    .line 281
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    invoke-static {v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->c(Lcom/zte/camera/ui/common/ProgressDrawable;I)I

    goto :goto_1

    .line 284
    :cond_8
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 285
    iget v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->c:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->d:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 288
    :cond_9
    :goto_1
    iget-object v1, v0, Lcom/zte/camera/ui/common/ProgressDrawable$c;->a:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->g(Lcom/zte/camera/ui/common/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    move-object v14, v2

    check-cast v14, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_2
    return-void
.end method
