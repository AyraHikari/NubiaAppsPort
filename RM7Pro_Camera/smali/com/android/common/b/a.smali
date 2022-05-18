.class public abstract Lcom/android/common/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static l:Ljava/lang/ThreadLocal;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field g:[F

.field h:[F

.field protected i:Lcom/android/common/b/g;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/common/b/a;->l:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, v0, p1, v1}, Lcom/android/common/b/a;-><init>(Lcom/android/common/b/g;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/common/b/g;II)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/common/b/a;->a:I

    .line 26
    iput v0, p0, Lcom/android/common/b/a;->c:I

    .line 27
    iput v0, p0, Lcom/android/common/b/a;->d:I

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 34
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/common/b/a;->g:[F

    new-array v0, v0, [F

    .line 35
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/common/b/a;->h:[F

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/common/b/a;->i:Lcom/android/common/b/g;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/common/b/a;->k:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/common/b/a;->a(Lcom/android/common/b/g;)V

    .line 44
    iput p2, p0, Lcom/android/common/b/a;->a:I

    .line 45
    iput p3, p0, Lcom/android/common/b/a;->b:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static l()Z
    .locals 1

    .line 177
    sget-object v0, Lcom/android/common/b/a;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/common/b/a;->i:Lcom/android/common/b/g;

    if-eqz v0, :cond_0

    .line 154
    iget v1, p0, Lcom/android/common/b/a;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 155
    invoke-virtual {v0, p0}, Lcom/android/common/b/g;->b(Lcom/android/common/b/a;)Z

    .line 156
    iput v2, p0, Lcom/android/common/b/a;->a:I

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/android/common/b/a;->b:I

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/common/b/a;->a(Lcom/android/common/b/g;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/common/b/a;->a:I

    return v0
.end method

.method public a(II)V
    .locals 1

    .line 57
    iput p1, p0, Lcom/android/common/b/a;->c:I

    .line 58
    iput p2, p0, Lcom/android/common/b/a;->d:I

    .line 61
    iput p1, p0, Lcom/android/common/b/a;->e:I

    .line 62
    iput p2, p0, Lcom/android/common/b/a;->f:I

    const/16 v0, 0x4000

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    iget v0, p0, Lcom/android/common/b/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "texture is too large: %d x %d"

    .line 64
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BasicTexture"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected a(Lcom/android/common/b/g;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/common/b/a;->i:Lcom/android/common/b/g;

    return-void
.end method

.method public a(Lcom/android/common/b/g;II)V
    .locals 6

    .line 181
    invoke-virtual {p0}, Lcom/android/common/b/a;->b()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/common/b/a;->c()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IIII)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/common/b/a;->j:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/common/b/a;->c:I

    return v0
.end method

.method public b(II)V
    .locals 5

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 73
    iget p2, p0, Lcom/android/common/b/a;->e:I

    int-to-float v0, p2

    div-float/2addr v0, p1

    .line 74
    iget v1, p0, Lcom/android/common/b/a;->f:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v0, v1

    :cond_0
    mul-float/2addr p1, v0

    .line 77
    iget-object v2, p0, Lcom/android/common/b/a;->g:[F

    int-to-float v3, p2

    sub-float/2addr v3, p1

    int-to-float p1, p2

    div-float/2addr v3, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    const/4 p2, 0x0

    aput v3, v2, p2

    const/4 v3, 0x1

    .line 78
    aget p2, v2, p2

    const/4 v4, 0x0

    sub-float p2, v4, p2

    aput p2, v2, v3

    int-to-float p2, v1

    sub-float/2addr p2, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    sub-float/2addr p2, p1

    const/4 p1, 0x2

    .line 79
    aput p2, v2, p1

    const/4 p2, 0x3

    .line 80
    aget p1, v2, p1

    sub-float/2addr v4, p1

    aput v4, v2, p2

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/android/common/b/a;->k:Z

    return-void
.end method

.method protected abstract b(Lcom/android/common/b/g;)Z
.end method

.method public c()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/common/b/a;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/common/b/a;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/common/b/a;->f:I

    return v0
.end method

.method public abstract f()I
.end method

.method protected finalize()V
    .locals 2

    .line 168
    sget-object v0, Lcom/android/common/b/a;->l:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/common/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/common/b/a;->h()V

    .line 170
    sget-object v0, Lcom/android/common/b/a;->l:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/android/common/b/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/common/b/a;->m()V

    return-void
.end method

.method public i()[F
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/common/b/a;->k:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/common/b/a;->h:[F

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/a;->g:[F

    return-object v0
.end method

.method public abstract j()V
.end method

.method public abstract k()Z
.end method
