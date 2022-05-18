.class public Landroidx/constraintlayout/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/b/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/b/b$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/b/h;

.field b:F

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/constraintlayout/b/b$a;

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/b/b;->c:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/b/b;->d:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/b/b;->f:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/b/c;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/b/b;->c:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/b/b;->d:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/b/b;->f:Z

    .line 58
    new-instance v0, Landroidx/constraintlayout/b/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/b/a;-><init>(Landroidx/constraintlayout/b/b;Landroidx/constraintlayout/b/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    return-void
.end method

.method private a([ZLandroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/h;
    .locals 9

    .line 616
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 618
    iget-object v5, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v5, v3}, Landroidx/constraintlayout/b/b$a;->b(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    .line 622
    iget-object v6, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v6, v3}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v6

    if-eqz p1, :cond_0

    .line 623
    iget v7, v6, Landroidx/constraintlayout/b/h;->b:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    .line 625
    iget-object v7, v6, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v8, Landroidx/constraintlayout/b/h$a;->c:Landroidx/constraintlayout/b/h$a;

    if-eq v7, v8, :cond_1

    iget-object v7, v6, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v8, Landroidx/constraintlayout/b/h$a;->d:Landroidx/constraintlayout/b/h$a;

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z
    .locals 0

    .line 532
    iget p1, p1, Landroidx/constraintlayout/b/h;->l:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method


# virtual methods
.method public a(FFFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/b;
    .locals 4

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Landroidx/constraintlayout/b/b;->b:F

    cmpl-float v1, p2, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    cmpl-float v1, p1, p3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    .line 250
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p4, v3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 251
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_1

    :cond_1
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2

    .line 253
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 254
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p7, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_1

    :cond_2
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    .line 262
    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p2, p4, v3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 263
    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p2, p5, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 264
    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p2, p7, p1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 265
    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    neg-float p1, p1

    invoke-interface {p2, p6, p1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_1

    .line 244
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p4, v3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 245
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p7, v3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 247
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p6, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    :goto_1
    return-object p0
.end method

.method public a(Landroidx/constraintlayout/b/d;I)Landroidx/constraintlayout/b/b;
    .locals 3

    .line 349
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/b/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/b/h;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/b/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/b/h;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    return-object p0
.end method

.method a(Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 0

    .line 139
    iput-object p1, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    int-to-float p2, p2

    .line 140
    iput p2, p1, Landroidx/constraintlayout/b/h;->e:F

    .line 141
    iput p2, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Landroidx/constraintlayout/b/b;->f:Z

    return-object p0
.end method

.method a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;
    .locals 2

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 357
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    return-object p0
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-gez p3, :cond_0

    mul-int/lit8 p3, p3, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p3, p3

    .line 165
    iput p3, p0, Landroidx/constraintlayout/b/b;->b:F

    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 169
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 172
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    :goto_0
    return-object p0
.end method

.method a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 307
    iget-object p3, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p3, p1, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 308
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p6, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 309
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    return-object p0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p4, v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    .line 319
    iget-object p4, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p4, p1, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 320
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 321
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 322
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p6, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 324
    iput p1, p0, Landroidx/constraintlayout/b/b;->b:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_3

    .line 328
    iget-object p4, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p4, p1, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 329
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    int-to-float p1, p3

    .line 330
    iput p1, p0, Landroidx/constraintlayout/b/b;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_4

    .line 333
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p6, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 334
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p5, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 335
    iput p1, p0, Landroidx/constraintlayout/b/b;->b:F

    goto :goto_0

    .line 337
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    sub-float v3, v0, p4

    mul-float v4, v3, v0

    invoke-interface {v1, p1, v4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 338
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    mul-float v1, v3, v2

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 339
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    mul-float/2addr v2, p4

    invoke-interface {p1, p5, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 340
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    mul-float/2addr v0, p4

    invoke-interface {p1, p6, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    .line 342
    iput p1, p0, Landroidx/constraintlayout/b/b;->b:F

    :cond_6
    :goto_0
    return-object p0
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 192
    iput p4, p0, Landroidx/constraintlayout/b/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 196
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 197
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 200
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    :goto_0
    return-object p0
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;
    .locals 2

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 376
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 377
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p3, p5}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 378
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    neg-float p2, p5

    invoke-interface {p1, p4, p2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    return-object p0
.end method

.method public a(Landroidx/constraintlayout/b/d;[Z)Landroidx/constraintlayout/b/h;
    .locals 0

    const/4 p1, 0x0

    .line 660
    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/b/b;->a([ZLandroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/constraintlayout/b/d$a;)V
    .locals 5

    .line 676
    instance-of v0, p1, Landroidx/constraintlayout/b/b;

    if-eqz v0, :cond_0

    .line 677
    check-cast p1, Landroidx/constraintlayout/b/b;

    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 679
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->a()V

    const/4 v0, 0x0

    .line 680
    :goto_0
    iget-object v1, p1, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 681
    iget-object v1, p1, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v1

    .line 682
    iget-object v2, p1, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v2, v0}, Landroidx/constraintlayout/b/b$a;->b(I)F

    move-result v2

    .line 683
    iget-object v3, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v2, v4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;Z)V
    .locals 3

    .line 561
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/b;Z)F

    move-result v0

    .line 563
    iget v1, p0, Landroidx/constraintlayout/b/b;->b:F

    iget v2, p2, Landroidx/constraintlayout/b/b;->b:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/b/b;->b:F

    if-eqz p3, :cond_0

    .line 565
    iget-object p2, p2, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/b/h;->b(Landroidx/constraintlayout/b/b;)V

    .line 567
    :cond_0
    sget-boolean p2, Landroidx/constraintlayout/b/d;->c:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    .line 568
    invoke-interface {p2}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 569
    iput-boolean p2, p0, Landroidx/constraintlayout/b/b;->f:Z

    .line 570
    iput-boolean p2, p1, Landroidx/constraintlayout/b/d;->g:Z

    :cond_1
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/h;Z)V
    .locals 3

    .line 575
    iget-boolean v0, p2, Landroidx/constraintlayout/b/h;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p2}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result v0

    .line 579
    iget v1, p0, Landroidx/constraintlayout/b/b;->b:F

    iget v2, p2, Landroidx/constraintlayout/b/h;->e:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/b/b;->b:F

    .line 580
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;Z)F

    if-eqz p3, :cond_1

    .line 582
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/b/h;->b(Landroidx/constraintlayout/b/b;)V

    .line 584
    :cond_1
    sget-boolean p3, Landroidx/constraintlayout/b/d;->c:Z

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    .line 585
    invoke-interface {p2}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 586
    iput-boolean p2, p0, Landroidx/constraintlayout/b/b;->f:Z

    .line 587
    iput-boolean p2, p1, Landroidx/constraintlayout/b/d;->g:Z

    :cond_2
    return-void
.end method

.method a()Z
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v1, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(Landroidx/constraintlayout/b/d;)Z
    .locals 2

    .line 432
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/d;)Landroidx/constraintlayout/b/h;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;)V

    const/4 p1, 0x0

    .line 439
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v1

    if-nez v1, :cond_1

    .line 440
    iput-boolean v0, p0, Landroidx/constraintlayout/b/b;->f:Z

    :cond_1
    return p1
.end method

.method a(Landroidx/constraintlayout/b/h;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 1

    if-gez p2, :cond_0

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 148
    iput p2, p0, Landroidx/constraintlayout/b/b;->b:F

    .line 149
    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    .line 151
    iput p2, p0, Landroidx/constraintlayout/b/b;->b:F

    .line 152
    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    :goto_0
    return-object p0
.end method

.method public b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 221
    iput p4, p0, Landroidx/constraintlayout/b/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 225
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 226
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 229
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    :goto_0
    return-object p0
.end method

.method public b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;
    .locals 2

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 394
    iget-object p3, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p3, p4, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 395
    iget-object p3, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-interface {p3, p1, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 396
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    neg-float p1, p5

    .line 397
    iput p1, p0, Landroidx/constraintlayout/b/b;->b:F

    return-object p0
.end method

.method b(Landroidx/constraintlayout/b/d;)Landroidx/constraintlayout/b/h;
    .locals 14

    .line 464
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v3

    move v8, v7

    move-object v2, v1

    :goto_0
    if-ge v4, v0, :cond_6

    .line 466
    iget-object v9, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v9, v4}, Landroidx/constraintlayout/b/b$a;->b(I)F

    move-result v9

    .line 467
    iget-object v10, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v10

    .line 468
    iget-object v11, v10, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v12, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    const/4 v13, 0x1

    if-ne v11, v12, :cond_2

    if-nez v1, :cond_0

    .line 472
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z

    move-result v1

    :goto_1
    move v5, v1

    move v7, v9

    move-object v1, v10

    goto :goto_3

    :cond_0
    cmpl-float v11, v7, v9

    if-lez v11, :cond_1

    .line 476
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z

    move-result v1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_5

    .line 477
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v7, v9

    move-object v1, v10

    move v5, v13

    goto :goto_3

    :cond_2
    if-nez v1, :cond_5

    cmpg-float v11, v9, v3

    if-gez v11, :cond_5

    if-nez v2, :cond_3

    .line 487
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z

    move-result v2

    :goto_2
    move v6, v2

    move v8, v9

    move-object v2, v10

    goto :goto_3

    :cond_3
    cmpl-float v11, v8, v9

    if-lez v11, :cond_4

    .line 491
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z

    move-result v2

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    .line 492
    invoke-direct {p0, v10, p1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/d;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v8, v9

    move-object v2, v10

    move v6, v13

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object v2
.end method

.method b()Ljava/lang/String;
    .locals 10

    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget v1, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/b/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    .line 87
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v5}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_8

    .line 89
    iget-object v6, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v6, v3}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_6

    .line 93
    :cond_2
    iget-object v7, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v7, v3}, Landroidx/constraintlayout/b/b$a;->b(I)F

    move-result v7

    cmpl-float v8, v7, v2

    if-nez v8, :cond_3

    goto/16 :goto_6

    .line 97
    :cond_3
    invoke-virtual {v6}, Landroidx/constraintlayout/b/h;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v9, -0x40800000    # -1.0f

    if-nez v1, :cond_4

    cmpg-float v1, v7, v2

    if-gez v1, :cond_6

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-lez v8, :cond_5

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 107
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    mul-float/2addr v7, v9

    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_7

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 114
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move v1, v4

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    if-nez v1, :cond_9

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public b(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/h;Z)V
    .locals 4

    .line 592
    iget-boolean v0, p2, Landroidx/constraintlayout/b/h;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p2}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result v0

    .line 596
    iget v1, p0, Landroidx/constraintlayout/b/b;->b:F

    iget v2, p2, Landroidx/constraintlayout/b/h;->o:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/b/b;->b:F

    .line 597
    iget-object v1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v1, p2, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;Z)F

    if-eqz p3, :cond_1

    .line 599
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/b/h;->b(Landroidx/constraintlayout/b/b;)V

    .line 601
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    iget-object v2, p1, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v2, v2, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v3, p2, Landroidx/constraintlayout/b/h;->n:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0, p3}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;FZ)V

    .line 602
    sget-boolean p3, Landroidx/constraintlayout/b/d;->c:Z

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    .line 603
    invoke-interface {p2}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 604
    iput-boolean p2, p0, Landroidx/constraintlayout/b/b;->f:Z

    .line 605
    iput-boolean p2, p1, Landroidx/constraintlayout/b/d;->g:Z

    :cond_2
    return-void
.end method

.method b(Landroidx/constraintlayout/b/h;)V
    .locals 3

    .line 536
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 538
    iget-object v2, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v2, v0, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/b/h;->c:I

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;Z)F

    move-result v0

    mul-float/2addr v0, v1

    .line 544
    iput-object p1, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 548
    :cond_1
    iget p1, p0, Landroidx/constraintlayout/b/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/b/b;->b:F

    .line 549
    iget-object p1, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, v0}, Landroidx/constraintlayout/b/b$a;->a(F)V

    return-void
.end method

.method c(Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    int-to-float p2, p2

    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    return-object p0
.end method

.method public c(Landroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/h;
    .locals 1

    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/b/b;->a([ZLandroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/h;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->a()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/constraintlayout/b/b;->f:Z

    return-void
.end method

.method public c(Landroidx/constraintlayout/b/d;)V
    .locals 8

    .line 712
    iget-object v0, p1, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_8

    .line 718
    iget-object v3, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v3}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 720
    iget-object v5, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v5, v4}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v5

    .line 721
    iget v6, v5, Landroidx/constraintlayout/b/h;->c:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    iget-boolean v6, v5, Landroidx/constraintlayout/b/h;->f:Z

    if-nez v6, :cond_1

    iget-boolean v6, v5, Landroidx/constraintlayout/b/h;->m:Z

    if-eqz v6, :cond_2

    .line 722
    :cond_1
    iget-object v6, p0, Landroidx/constraintlayout/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 725
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 728
    iget-object v5, p0, Landroidx/constraintlayout/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/h;

    .line 729
    iget-boolean v6, v5, Landroidx/constraintlayout/b/h;->f:Z

    if-eqz v6, :cond_4

    .line 730
    invoke-virtual {p0, p1, v5, v2}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/h;Z)V

    goto :goto_3

    .line 731
    :cond_4
    iget-boolean v6, v5, Landroidx/constraintlayout/b/h;->m:Z

    if-eqz v6, :cond_5

    .line 732
    invoke-virtual {p0, p1, v5, v2}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/h;Z)V

    goto :goto_3

    .line 734
    :cond_5
    iget-object v6, p1, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    iget v5, v5, Landroidx/constraintlayout/b/h;->c:I

    aget-object v5, v6, v5

    invoke-virtual {p0, p1, v5, v2}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;Z)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 737
    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0

    .line 742
    :cond_8
    sget-boolean v0, Landroidx/constraintlayout/b/d;->c:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    .line 743
    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v0

    if-nez v0, :cond_9

    .line 744
    iput-boolean v2, p0, Landroidx/constraintlayout/b/b;->f:Z

    .line 745
    iput-boolean v2, p1, Landroidx/constraintlayout/b/d;->g:Z

    :cond_9
    return-void
.end method

.method d()V
    .locals 2

    .line 415
    iget v0, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 417
    iput v0, p0, Landroidx/constraintlayout/b/b;->b:F

    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->b()V

    :cond_0
    return-void
.end method

.method public d(Landroidx/constraintlayout/b/h;)V
    .locals 3

    .line 691
    iget v0, p1, Landroidx/constraintlayout/b/h;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget v0, p1, Landroidx/constraintlayout/b/h;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 695
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/b/h;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const v1, 0x49742400    # 1000000.0f

    goto :goto_0

    .line 697
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/b/h;->d:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    .line 699
    :cond_3
    iget v0, p1, Landroidx/constraintlayout/b/h;->d:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const v1, 0x5368d4a5    # 1.0E12f

    .line 702
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/b/b$a;->a(Landroidx/constraintlayout/b/h;F)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/b/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    .line 665
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/b$a;->a()V

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    const/4 v0, 0x0

    .line 667
    iput v0, p0, Landroidx/constraintlayout/b/b;->b:F

    return-void
.end method

.method public g()Landroidx/constraintlayout/b/h;
    .locals 1

    .line 707
    iget-object v0, p0, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroidx/constraintlayout/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
