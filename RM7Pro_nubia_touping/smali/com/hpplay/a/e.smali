.class public Lcom/hpplay/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/a/e$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field public static final o:I = 0xe

.field public static final p:I = 0xf

.field private static final q:Z = false

.field private static final r:Ljava/lang/String; = "FullFrameRect"

.field private static final v:I = 0x4

.field private static final x:[F

.field private static final y:Ljava/nio/FloatBuffer;

.field private static final z:I = 0x8


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/hpplay/a/e$a;

.field private final s:Lcom/hpplay/a/a;

.field private t:Lcom/hpplay/a/h;

.field private final u:Ljava/lang/Object;

.field private final w:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hpplay/a/e;->x:[F

    .line 68
    sget-object v0, Lcom/hpplay/a/e;->x:[F

    invoke-static {v0}, Lcom/hpplay/a/f;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/hpplay/a/e;->y:Ljava/nio/FloatBuffer;

    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/hpplay/a/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/hpplay/a/a;

    invoke-direct {v0}, Lcom/hpplay/a/a;-><init>()V

    iput-object v0, p0, Lcom/hpplay/a/e;->s:Lcom/hpplay/a/a;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hpplay/a/e;->u:Ljava/lang/Object;

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hpplay/a/e;->w:[F

    .line 71
    iput-boolean v1, p0, Lcom/hpplay/a/e;->A:Z

    .line 73
    sget-object v0, Lcom/hpplay/a/e$a;->a:Lcom/hpplay/a/e$a;

    iput-object v0, p0, Lcom/hpplay/a/e;->C:Lcom/hpplay/a/e$a;

    .line 82
    iput-object p1, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    .line 83
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 84
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 128
    return-void
.end method

.method public a(FF)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 137
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 138
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 219
    const/4 v1, 0x0

    .line 220
    const/4 v0, 0x0

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_0
    sget-object v2, Lcom/hpplay/a/h$a;->c:Lcom/hpplay/a/h$a;

    .line 285
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/a/e;->c()Lcom/hpplay/a/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/a/h;->b()Lcom/hpplay/a/h$a;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 286
    new-instance v3, Lcom/hpplay/a/h;

    invoke-direct {v3, v2}, Lcom/hpplay/a/h;-><init>(Lcom/hpplay/a/h$a;)V

    invoke-virtual {p0, v3}, Lcom/hpplay/a/e;->a(Lcom/hpplay/a/h;)V

    .line 290
    :cond_0
    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/hpplay/a/e;->c()Lcom/hpplay/a/h;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/a/h;->a([FF)V

    .line 293
    :cond_1
    return-void

    .line 230
    :pswitch_1
    sget-object v2, Lcom/hpplay/a/h$a;->d:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 233
    :pswitch_2
    sget-object v2, Lcom/hpplay/a/h$a;->e:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 236
    :pswitch_3
    sget-object v2, Lcom/hpplay/a/h$a;->f:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 239
    :pswitch_4
    sget-object v2, Lcom/hpplay/a/h$a;->g:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 242
    :pswitch_5
    sget-object v2, Lcom/hpplay/a/h$a;->h:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 245
    :pswitch_6
    sget-object v2, Lcom/hpplay/a/h$a;->i:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 248
    :pswitch_7
    sget-object v2, Lcom/hpplay/a/h$a;->j:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 251
    :pswitch_8
    sget-object v2, Lcom/hpplay/a/h$a;->k:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 254
    :pswitch_9
    sget-object v2, Lcom/hpplay/a/h$a;->l:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 257
    :pswitch_a
    sget-object v2, Lcom/hpplay/a/h$a;->m:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 260
    :pswitch_b
    sget-object v2, Lcom/hpplay/a/h$a;->n:Lcom/hpplay/a/h$a;

    goto :goto_0

    .line 263
    :pswitch_c
    sget-object v2, Lcom/hpplay/a/h$a;->o:Lcom/hpplay/a/h$a;

    .line 264
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    goto :goto_0

    .line 267
    :pswitch_d
    sget-object v2, Lcom/hpplay/a/h$a;->o:Lcom/hpplay/a/h$a;

    .line 268
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    goto :goto_0

    .line 271
    :pswitch_e
    sget-object v2, Lcom/hpplay/a/h$a;->o:Lcom/hpplay/a/h$a;

    .line 272
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    goto :goto_0

    .line 275
    :pswitch_f
    sget-object v2, Lcom/hpplay/a/h$a;->o:Lcom/hpplay/a/h$a;

    .line 276
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    .line 277
    const/high16 v0, 0x3f000000    # 0.5f

    .line 278
    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 264
    :array_0
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
    .end array-data

    .line 268
    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x40a00000    # 5.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 272
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x41000000    # 8.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 276
    :array_3
    .array-data 4
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public a(I[F)V
    .locals 7

    .prologue
    .line 193
    iget-object v6, p0, Lcom/hpplay/a/e;->u:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/a/e;->A:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/a/e;->B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/a/e;->C:Lcom/hpplay/a/e$a;

    sget-object v1, Lcom/hpplay/a/e$a;->b:Lcom/hpplay/a/e$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hpplay/a/e;->C:Lcom/hpplay/a/e$a;

    sget-object v1, Lcom/hpplay/a/e$a;->d:Lcom/hpplay/a/e$a;

    if-ne v0, v1, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x0

    const v1, 0x3ea1cac1    # 0.316f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    iget-object v1, p0, Lcom/hpplay/a/e;->w:[F

    iget-object v2, p0, Lcom/hpplay/a/e;->s:Lcom/hpplay/a/a;

    invoke-virtual {v2}, Lcom/hpplay/a/a;->b()I

    move-result v4

    iget-object v2, p0, Lcom/hpplay/a/e;->s:Lcom/hpplay/a/a;

    invoke-virtual {v2}, Lcom/hpplay/a/a;->c()I

    move-result v5

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/a/h;->a([F[FIII)V

    .line 199
    monitor-exit v6

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    invoke-virtual {v0, p1}, Lcom/hpplay/a/h;->a(Landroid/view/MotionEvent;)V

    .line 210
    return-void
.end method

.method public a(Lcom/hpplay/a/e$a;Z)V
    .locals 7

    .prologue
    .line 91
    iget-object v6, p0, Lcom/hpplay/a/e;->u:Ljava/lang/Object;

    monitor-enter v6

    .line 92
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hpplay/a/e;->A:Z

    .line 93
    iput-boolean p2, p0, Lcom/hpplay/a/e;->B:Z

    .line 94
    iput-object p1, p0, Lcom/hpplay/a/e;->C:Lcom/hpplay/a/e$a;

    .line 95
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 96
    sget-object v0, Lcom/hpplay/a/e$1;->a:[I

    invoke-virtual {p1}, Lcom/hpplay/a/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    monitor-exit v6

    .line 124
    return-void

    .line 98
    :pswitch_0
    if-eqz p2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 100
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const v2, 0x404a3d71    # 3.16f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const v2, 0x3ea1cac1    # 0.316f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 107
    :pswitch_1
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 112
    :pswitch_2
    if-eqz p2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 114
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const v2, 0x404a3d71    # 3.16f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const v2, 0x3ea1cac1    # 0.316f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/hpplay/a/h;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    invoke-virtual {v0}, Lcom/hpplay/a/h;->a()V

    .line 178
    iput-object p1, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    .line 179
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 141
    const/16 v0, 0x20

    new-array v2, v0, [F

    .line 142
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    invoke-static {v0, v1, v2, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-static {v2, v1, v3, v4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    move v3, v1

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 151
    return-void

    .line 148
    :cond_0
    invoke-static {v2, v1, v4, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0
.end method

.method public a([FI)[F
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Lcom/hpplay/a/e;->w:[F

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hpplay/a/e;->s:Lcom/hpplay/a/a;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/hpplay/a/e;->s:Lcom/hpplay/a/a;

    invoke-virtual {v0}, Lcom/hpplay/a/a;->a()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    invoke-virtual {v0}, Lcom/hpplay/a/h;->a()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    .line 164
    :cond_1
    return-void
.end method

.method public c()Lcom/hpplay/a/h;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/hpplay/a/e;->t:Lcom/hpplay/a/h;

    invoke-virtual {v0}, Lcom/hpplay/a/h;->c()I

    move-result v0

    return v0
.end method
