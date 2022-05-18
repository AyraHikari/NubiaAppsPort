.class public Landroidx/constraintlayout/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/b/b$a;


# static fields
.field private static j:F = 0.001f


# instance fields
.field a:[I

.field b:[I

.field c:[I

.field d:[F

.field e:[I

.field f:[I

.field g:I

.field h:I

.field protected final i:Landroidx/constraintlayout/b/c;

.field private final k:I

.field private l:I

.field private m:I

.field private final n:Landroidx/constraintlayout/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/b/b;Landroidx/constraintlayout/b/c;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/constraintlayout/b/i;->k:I

    const/16 v1, 0x10

    .line 30
    iput v1, p0, Landroidx/constraintlayout/b/i;->l:I

    .line 31
    iput v1, p0, Landroidx/constraintlayout/b/i;->m:I

    new-array v2, v1, [I

    .line 33
    iput-object v2, p0, Landroidx/constraintlayout/b/i;->a:[I

    new-array v2, v1, [I

    .line 34
    iput-object v2, p0, Landroidx/constraintlayout/b/i;->b:[I

    new-array v2, v1, [I

    .line 36
    iput-object v2, p0, Landroidx/constraintlayout/b/i;->c:[I

    new-array v2, v1, [F

    .line 37
    iput-object v2, p0, Landroidx/constraintlayout/b/i;->d:[F

    new-array v2, v1, [I

    .line 38
    iput-object v2, p0, Landroidx/constraintlayout/b/i;->e:[I

    new-array v1, v1, [I

    .line 39
    iput-object v1, p0, Landroidx/constraintlayout/b/i;->f:[I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 41
    iput v0, p0, Landroidx/constraintlayout/b/i;->h:I

    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/b/i;->n:Landroidx/constraintlayout/b/b;

    .line 48
    iput-object p2, p0, Landroidx/constraintlayout/b/i;->i:Landroidx/constraintlayout/b/c;

    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/b/i;->a()V

    return-void
.end method

.method private a(ILandroidx/constraintlayout/b/h;F)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/b/i;->c:[I

    iget v1, p2, Landroidx/constraintlayout/b/h;->b:I

    aput v1, v0, p1

    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/b/i;->d:[F

    aput p3, v0, p1

    .line 291
    iget-object p3, p0, Landroidx/constraintlayout/b/i;->e:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    .line 292
    iget-object p3, p0, Landroidx/constraintlayout/b/i;->f:[I

    aput v0, p3, p1

    .line 293
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->n:Landroidx/constraintlayout/b/b;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/b;)V

    .line 294
    iget p1, p2, Landroidx/constraintlayout/b/h;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroidx/constraintlayout/b/h;->l:I

    .line 295
    iget p1, p0, Landroidx/constraintlayout/b/i;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/b/i;->g:I

    return-void
.end method

.method private a(Landroidx/constraintlayout/b/h;I)V
    .locals 3

    .line 216
    iget p1, p1, Landroidx/constraintlayout/b/h;->b:I

    iget v0, p0, Landroidx/constraintlayout/b/i;->m:I

    rem-int/2addr p1, v0

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/b/i;->a:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 219
    aput p2, v0, p1

    goto :goto_1

    .line 224
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->b:[I

    aget v0, p1, v1

    if-eq v0, v2, :cond_1

    .line 225
    aget v1, p1, v1

    goto :goto_0

    .line 227
    :cond_1
    aput p2, p1, v1

    .line 232
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->b:[I

    aput v2, p1, p2

    return-void
.end method

.method private b(ILandroidx/constraintlayout/b/h;F)V
    .locals 3

    .line 308
    invoke-direct {p0}, Landroidx/constraintlayout/b/i;->e()I

    move-result v0

    .line 309
    invoke-direct {p0, v0, p2, p3}, Landroidx/constraintlayout/b/i;->a(ILandroidx/constraintlayout/b/h;F)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    .line 311
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->e:[I

    aput p1, v1, v0

    .line 312
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 313
    aput v0, v1, p1

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->e:[I

    aput p3, p1, v0

    .line 316
    iget p1, p0, Landroidx/constraintlayout/b/i;->g:I

    if-lez p1, :cond_1

    .line 317
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->f:[I

    iget v1, p0, Landroidx/constraintlayout/b/i;->h:I

    aput v1, p1, v0

    .line 318
    iput v0, p0, Landroidx/constraintlayout/b/i;->h:I

    goto :goto_0

    .line 320
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->f:[I

    aput p3, p1, v0

    .line 323
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v1, p1, v0

    if-eq v1, p3, :cond_2

    .line 324
    iget-object p3, p0, Landroidx/constraintlayout/b/i;->e:[I

    aget p1, p1, v0

    aput v0, p3, p1

    .line 326
    :cond_2
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;I)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 199
    iget v0, p0, Landroidx/constraintlayout/b/i;->l:I

    mul-int/lit8 v0, v0, 0x2

    .line 200
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/b/i;->c:[I

    .line 201
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->d:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/b/i;->d:[F

    .line 202
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->e:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/b/i;->e:[I

    .line 203
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->f:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/b/i;->f:[I

    .line 204
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/b/i;->b:[I

    .line 205
    iget v1, p0, Landroidx/constraintlayout/b/i;->l:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->c:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->b:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iput v0, p0, Landroidx/constraintlayout/b/i;->l:I

    return-void
.end method

.method private d(Landroidx/constraintlayout/b/h;)V
    .locals 5

    .line 260
    iget v0, p1, Landroidx/constraintlayout/b/h;->b:I

    iget v1, p0, Landroidx/constraintlayout/b/i;->m:I

    rem-int/2addr v0, v1

    .line 261
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->a:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 268
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/b/h;->b:I

    .line 270
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 271
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->a:[I

    iget-object v3, p0, Landroidx/constraintlayout/b/i;->b:[I

    aget v4, v3, v1

    aput v4, p1, v0

    .line 272
    aput v2, v3, v1

    goto :goto_1

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/i;->b:[I

    aget v3, v0, v1

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v4, v0, v1

    aget v3, v3, v4

    if-eq v3, p1, :cond_2

    .line 275
    aget v1, v0, v1

    goto :goto_0

    .line 277
    :cond_2
    aget v3, v0, v1

    if-eq v3, v2, :cond_3

    .line 278
    iget-object v4, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_3

    .line 279
    aget p1, v0, v3

    aput p1, v0, v1

    .line 280
    aput v2, v0, v3

    :cond_3
    :goto_1
    return-void
.end method

.method private e()I
    .locals 3

    const/4 v0, 0x0

    .line 299
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/b/i;->l:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 300
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/b;Z)F
    .locals 7

    .line 427
    iget-object v0, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/i;->b(Landroidx/constraintlayout/b/h;)F

    move-result v0

    .line 428
    iget-object v1, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;Z)F

    .line 439
    iget-object p1, p1, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    check-cast p1, Landroidx/constraintlayout/b/i;

    .line 440
    invoke-virtual {p1}, Landroidx/constraintlayout/b/i;->c()I

    move-result v1

    .line 441
    iget v2, p1, Landroidx/constraintlayout/b/i;->h:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 455
    iget-object v4, p1, Landroidx/constraintlayout/b/i;->c:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 456
    iget-object v4, p1, Landroidx/constraintlayout/b/i;->d:[F

    aget v4, v4, v3

    .line 457
    iget-object v5, p0, Landroidx/constraintlayout/b/i;->i:Landroidx/constraintlayout/b/c;

    iget-object v5, v5, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget-object v6, p1, Landroidx/constraintlayout/b/i;->c:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    mul-float/2addr v4, v0

    .line 458
    invoke-virtual {p0, v5, v4, p2}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(Landroidx/constraintlayout/b/h;Z)F
    .locals 7

    .line 381
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/i;->c(Landroidx/constraintlayout/b/h;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/i;->d(Landroidx/constraintlayout/b/h;)V

    .line 386
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->d:[F

    aget v2, v2, v0

    .line 387
    iget v3, p0, Landroidx/constraintlayout/b/i;->h:I

    if-ne v3, v0, :cond_1

    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v3, v3, v0

    iput v3, p0, Landroidx/constraintlayout/b/i;->h:I

    .line 390
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->c:[I

    aput v1, v3, v0

    .line 391
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->e:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_2

    .line 392
    iget-object v4, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v5, v3, v0

    aget v6, v4, v0

    aput v6, v4, v5

    .line 394
    :cond_2
    iget-object v4, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v5, v4, v0

    if-eq v5, v1, :cond_3

    .line 395
    aget v1, v4, v0

    aget v0, v3, v0

    aput v0, v3, v1

    .line 397
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 398
    iget v0, p1, Landroidx/constraintlayout/b/h;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/b/h;->l:I

    if-eqz p2, :cond_4

    .line 400
    iget-object p2, p0, Landroidx/constraintlayout/b/i;->n:Landroidx/constraintlayout/b/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/h;->b(Landroidx/constraintlayout/b/b;)V

    :cond_4
    return v2
.end method

.method public a(I)Landroidx/constraintlayout/b/h;
    .locals 6

    .line 59
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/b/i;->h:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1

    if-eq v2, v4, :cond_1

    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->i:Landroidx/constraintlayout/b/c;

    iget-object p1, p1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget-object v0, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v0, v0, v2

    aget-object p1, p1, v0

    return-object p1

    .line 68
    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public a()V
    .locals 5

    .line 180
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/b/i;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v4, p0, Landroidx/constraintlayout/b/i;->n:Landroidx/constraintlayout/b/b;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/b/h;->b(Landroidx/constraintlayout/b/b;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/b/i;->l:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 188
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->c:[I

    aput v3, v2, v0

    .line 189
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->b:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 191
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/b/i;->m:I

    if-ge v0, v2, :cond_3

    .line 192
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->a:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 195
    iput v3, p0, Landroidx/constraintlayout/b/i;->h:I

    return-void
.end method

.method public a(F)V
    .locals 5

    .line 481
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 482
    iget v1, p0, Landroidx/constraintlayout/b/i;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 484
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->d:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 485
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;F)V
    .locals 7

    .line 334
    sget v0, Landroidx/constraintlayout/b/i;->j:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 335
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;Z)F

    return-void

    .line 338
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 339
    invoke-direct {p0, v1, p1, p2}, Landroidx/constraintlayout/b/i;->a(ILandroidx/constraintlayout/b/h;F)V

    .line 340
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;I)V

    .line 341
    iput v1, p0, Landroidx/constraintlayout/b/i;->h:I

    goto :goto_2

    .line 343
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/i;->c(Landroidx/constraintlayout/b/h;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 345
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->d:[F

    aput p2, p1, v0

    goto :goto_2

    .line 347
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/b/i;->l:I

    if-lt v0, v2, :cond_3

    .line 348
    invoke-direct {p0}, Landroidx/constraintlayout/b/i;->d()V

    .line 350
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 352
    iget v2, p0, Landroidx/constraintlayout/b/i;->h:I

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_7

    .line 354
    iget-object v5, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/b/h;->b:I

    if-ne v5, v6, :cond_4

    .line 355
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->d:[F

    aput p2, p1, v2

    return-void

    .line 358
    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/b/h;->b:I

    if-ge v5, v6, :cond_5

    move v4, v2

    .line 361
    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v2, v5, v2

    if-ne v2, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_7
    :goto_1
    invoke-direct {p0, v4, p1, p2}, Landroidx/constraintlayout/b/i;->b(ILandroidx/constraintlayout/b/h;F)V

    :goto_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;FZ)V
    .locals 4

    .line 410
    sget v0, Landroidx/constraintlayout/b/i;->j:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/i;->c(Landroidx/constraintlayout/b/h;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/b/i;->d:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 418
    aget p2, v1, v0

    sget v2, Landroidx/constraintlayout/b/i;->j:F

    neg-float v3, v2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_2

    aget p2, v1, v0

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 419
    aput p2, v1, v0

    .line 420
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/b/i;->a(Landroidx/constraintlayout/b/h;Z)F

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;)Z
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/i;->c(Landroidx/constraintlayout/b/h;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)F
    .locals 4

    .line 78
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 79
    iget v1, p0, Landroidx/constraintlayout/b/i;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v2, p1, :cond_0

    .line 82
    iget-object p1, p0, Landroidx/constraintlayout/b/i;->d:[F

    aget p1, p1, v1

    return p1

    .line 84
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/constraintlayout/b/h;)F
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/i;->c(Landroidx/constraintlayout/b/h;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/b/i;->d:[F

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 6

    .line 468
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    .line 469
    iget v1, p0, Landroidx/constraintlayout/b/i;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 471
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->d:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    aput v4, v3, v1

    .line 472
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 54
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    return v0
.end method

.method public c(Landroidx/constraintlayout/b/h;)I
    .locals 5

    .line 99
    iget v0, p0, Landroidx/constraintlayout/b/i;->g:I

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/b/h;->b:I

    .line 103
    iget v0, p0, Landroidx/constraintlayout/b/i;->m:I

    rem-int v0, p1, v0

    .line 104
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->a:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    return v1

    .line 108
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    return v0

    .line 111
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/b/i;->b:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-eq v3, p1, :cond_3

    .line 112
    aget v0, v2, v0

    goto :goto_0

    .line 114
    :cond_3
    aget v3, v2, v0

    if-ne v3, v1, :cond_4

    return v1

    .line 117
    :cond_4
    iget-object v3, p0, Landroidx/constraintlayout/b/i;->c:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-ne v3, p1, :cond_5

    .line 118
    aget p1, v2, v0

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget v1, p0, Landroidx/constraintlayout/b/i;->g:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 151
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/b/i;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/b/i;->b(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/b/i;->c(Landroidx/constraintlayout/b/h;)I

    move-result v3

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "[p: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v4, p0, Landroidx/constraintlayout/b/i;->e:[I

    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/b/i;->i:Landroidx/constraintlayout/b/c;

    iget-object v4, v4, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget-object v7, p0, Landroidx/constraintlayout/b/i;->c:[I

    iget-object v8, p0, Landroidx/constraintlayout/b/i;->e:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", n: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v4, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/b/i;->i:Landroidx/constraintlayout/b/c;

    iget-object v4, v4, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget-object v5, p0, Landroidx/constraintlayout/b/i;->c:[I

    iget-object v6, p0, Landroidx/constraintlayout/b/i;->f:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 167
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 171
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
