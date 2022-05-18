.class public Lcom/android/common/a/a/ag;
.super Lcom/android/common/a/a;
.source "SourceFile"


# instance fields
.field a:[F

.field private b:Landroid/content/Context;

.field private c:Lcom/android/common/b/l;

.field private d:Lcom/android/common/b/l;

.field private e:I

.field private f:I

.field private g:Lcom/android/common/a/a/l;

.field private h:Lcom/android/common/a/a/u;

.field private i:Lcom/android/common/a/a/s;

.field private final j:I

.field private k:I

.field private final l:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/android/common/a/a;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 22
    iput-object v1, p0, Lcom/android/common/a/a/ag;->a:[F

    const/4 v2, 0x5

    .line 25
    iput v2, p0, Lcom/android/common/a/a/ag;->e:I

    const/4 v2, 0x3

    .line 26
    iput v2, p0, Lcom/android/common/a/a/ag;->f:I

    const/4 v2, 0x0

    .line 33
    iput v2, p0, Lcom/android/common/a/a/ag;->k:I

    new-array v0, v0, [F

    .line 34
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/common/a/a/ag;->l:[F

    .line 42
    iput-object p1, p0, Lcom/android/common/a/a/ag;->b:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/common/a/a/ag;->j:I

    .line 44
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 45
    new-instance p1, Lcom/android/common/a/a/l;

    iget-object v0, p0, Lcom/android/common/a/a/ag;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/common/a/a/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/common/a/a/ag;->g:Lcom/android/common/a/a/l;

    .line 46
    new-instance p1, Lcom/android/common/a/a/u;

    iget-object v0, p0, Lcom/android/common/a/a/ag;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/common/a/a/u;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/common/a/a/ag;->h:Lcom/android/common/a/a/u;

    .line 47
    new-instance p1, Lcom/android/common/a/a/s;

    iget-object v0, p0, Lcom/android/common/a/a/ag;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/common/a/a/ag;->h:Lcom/android/common/a/a/u;

    invoke-virtual {v1}, Lcom/android/common/a/a/u;->a()I

    move-result v1

    invoke-direct {p1, v0, v1, p2}, Lcom/android/common/a/a/s;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(II)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/common/b/l;

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int v2, p1, v1

    div-int v1, p2, v1

    invoke-direct {v0, v2, v1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int v1, p1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int v1, p2, v1

    if-eq v0, v1, :cond_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int v2, p1, v1

    div-int v1, p2, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/b/l;->c(II)V

    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    if-nez v0, :cond_3

    .line 134
    new-instance v0, Lcom/android/common/b/l;

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int/2addr p1, v1

    div-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int v1, p1, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int v1, p2, v1

    if-eq v0, v1, :cond_5

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    iget v1, p0, Lcom/android/common/a/a/ag;->f:I

    div-int/2addr p1, v1

    div-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/common/b/l;->c(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 144
    :cond_0
    iput-object v1, p0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 149
    :cond_2
    iput-object v1, p0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/android/common/a/a/ag;->j:I

    return v0
.end method

.method public a(IZ)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/common/a/a/ag;->k:I

    return-void
.end method

.method public a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p10

    .line 53
    iget v1, v0, Lcom/android/common/a/a/ag;->j:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->f()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    if-eqz p9, :cond_1

    .line 57
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->b()I

    move-result v1

    .line 58
    invoke-virtual/range {p9 .. p9}, Lcom/android/common/b/l;->c()I

    move-result v2

    move v13, v1

    move v14, v2

    goto :goto_0

    :cond_1
    move/from16 v13, p6

    move/from16 v14, p7

    .line 61
    :goto_0
    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->b()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/common/b/a;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/a/a/ag;->a(II)V

    .line 63
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->f()V

    .line 64
    iget-object v1, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    invoke-virtual {v12, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 65
    iget-object v3, v0, Lcom/android/common/a/a/ag;->a:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    .line 66
    invoke-virtual {v1}, Lcom/android/common/b/l;->b()I

    move-result v6

    iget-object v1, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->c()I

    move-result v7

    move-object/from16 v1, p10

    move-object/from16 v2, p8

    .line 65
    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 67
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    .line 68
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->g()V

    const/4 v1, 0x0

    move v15, v1

    .line 70
    :goto_1
    iget v1, v0, Lcom/android/common/a/a/ag;->e:I

    if-ge v15, v1, :cond_2

    .line 71
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->f()V

    .line 72
    iget-object v1, v0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    invoke-virtual {v12, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 73
    iget-object v1, v0, Lcom/android/common/a/a/ag;->g:Lcom/android/common/a/a/l;

    iget-object v3, v0, Lcom/android/common/a/a/ag;->a:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, v0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    .line 74
    invoke-virtual {v2}, Lcom/android/common/b/l;->b()I

    move-result v7

    iget-object v2, v0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    invoke-virtual {v2}, Lcom/android/common/b/l;->c()I

    move-result v8

    iget-object v9, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v11, p10

    .line 73
    invoke-virtual/range {v1 .. v11}, Lcom/android/common/a/a/l;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 76
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    .line 77
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->g()V

    .line 79
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->f()V

    .line 80
    iget-object v1, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    invoke-virtual {v12, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 81
    iget-object v1, v0, Lcom/android/common/a/a/ag;->h:Lcom/android/common/a/a/u;

    iget-object v3, v0, Lcom/android/common/a/a/ag;->a:[F

    iget-object v2, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    .line 82
    invoke-virtual {v2}, Lcom/android/common/b/l;->b()I

    move-result v7

    iget-object v2, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    invoke-virtual {v2}, Lcom/android/common/b/l;->c()I

    move-result v8

    iget-object v9, v0, Lcom/android/common/a/a/ag;->c:Lcom/android/common/b/l;

    move-object/from16 v2, p1

    .line 81
    invoke-virtual/range {v1 .. v11}, Lcom/android/common/a/a/u;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 84
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->a()V

    .line 85
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->g()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->f()V

    .line 89
    iget-object v1, v0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    move-object/from16 v3, p2

    move-object/from16 v2, p8

    invoke-virtual {v1, v2, v3}, Lcom/android/common/a/a/s;->a(Lcom/android/common/b/a;[F)V

    const/16 v1, 0x5a

    .line 91
    iget v2, v0, Lcom/android/common/a/a/ag;->k:I

    if-eq v1, v2, :cond_4

    const/16 v1, 0x10e

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 94
    :cond_3
    iget-object v1, v0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    iget-object v2, v0, Lcom/android/common/a/a/ag;->l:[F

    invoke-virtual {v1, v2}, Lcom/android/common/a/a/s;->a([F)V

    goto :goto_3

    .line 92
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    iget-object v2, v0, Lcom/android/common/a/a/ag;->a:[F

    invoke-virtual {v1, v2}, Lcom/android/common/a/a/s;->a([F)V

    .line 97
    :goto_3
    iget-object v1, v0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    iget-object v9, v0, Lcom/android/common/a/a/ag;->d:Lcom/android/common/b/l;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v13

    move v8, v14

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/common/a/a/s;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 99
    invoke-virtual/range {p10 .. p10}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/common/a/a/ag;->g:Lcom/android/common/a/a/l;

    invoke-virtual {v0}, Lcom/android/common/a/a/l;->b()V

    .line 112
    iget-object v0, p0, Lcom/android/common/a/a/ag;->h:Lcom/android/common/a/a/u;

    invoke-virtual {v0}, Lcom/android/common/a/a/u;->b()V

    .line 113
    iget-object v0, p0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    invoke-virtual {v0}, Lcom/android/common/a/a/s;->b()V

    .line 114
    invoke-direct {p0}, Lcom/android/common/a/a/ag;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/common/a/a/ag;->g:Lcom/android/common/a/a/l;

    invoke-virtual {v0}, Lcom/android/common/a/a/l;->c()V

    .line 105
    iget-object v0, p0, Lcom/android/common/a/a/ag;->h:Lcom/android/common/a/a/u;

    invoke-virtual {v0}, Lcom/android/common/a/a/u;->c()V

    .line 106
    iget-object v0, p0, Lcom/android/common/a/a/ag;->i:Lcom/android/common/a/a/s;

    invoke-virtual {v0}, Lcom/android/common/a/a/s;->c()V

    return-void
.end method
