.class public Lcn/nubia/camera/multiRecord/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[F

.field static final b:[F


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[F

.field private final l:I

.field private final m:I

.field private n:Ljava/nio/FloatBuffer;

.field private o:Ljava/nio/FloatBuffer;

.field private p:I

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/multiRecord/b;->a:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 53
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/multiRecord/b;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/b;->k:[F

    .line 35
    sget-object v1, Lcn/nubia/camera/multiRecord/b;->a:[F

    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcn/nubia/camera/multiRecord/b;->l:I

    const/16 v2, 0xc

    .line 36
    iput v2, p0, Lcn/nubia/camera/multiRecord/b;->m:I

    const/4 v2, 0x0

    .line 40
    iput v2, p0, Lcn/nubia/camera/multiRecord/b;->q:F

    iput v2, p0, Lcn/nubia/camera/multiRecord/b;->r:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcn/nubia/camera/multiRecord/b;->s:F

    iput v2, p0, Lcn/nubia/camera/multiRecord/b;->t:F

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/b;->u:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->p:I

    const/4 p1, 0x0

    .line 63
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 66
    invoke-static {v1}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/b;->n:Ljava/nio/FloatBuffer;

    .line 67
    sget-object v0, Lcn/nubia/camera/multiRecord/b;->b:[F

    invoke-static {v0}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/b;->o:Ljava/nio/FloatBuffer;

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/b;->u:Landroid/content/Context;

    const v1, 0x7f0e004e

    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b31

    invoke-static {v1, v0}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/b;->c:I

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/b;->u:Landroid/content/Context;

    const v2, 0x7f0e004d

    invoke-static {v1, v2, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    const v1, 0x8b30

    invoke-static {v1, p2}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->d:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, p1

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 71
    invoke-static {v1}, Lcn/nubia/camera/v/a;->a([I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/multiRecord/b;->e:I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vertexShader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fragmentShader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mProgram "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CropPicture"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "aPosition"

    .line 74
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->f:I

    const-string p2, "aTextureCoord"

    .line 75
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->g:I

    const-string p2, "uMVPMatrix"

    .line 76
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->h:I

    const-string p2, "uSTMatrix"

    .line 77
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->i:I

    const-string p2, "sTexture"

    .line 78
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/multiRecord/b;->j:I

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPositionHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/b;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mTextureCoordHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/b;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mMVPMatrixHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/b;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mSTMatrixHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/b;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mTextureHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/b;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 143
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->e:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteProgram(I)V

    .line 144
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->c:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    .line 145
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->d:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    .line 87
    iput p1, p0, Lcn/nubia/camera/multiRecord/b;->q:F

    .line 88
    iput p2, p0, Lcn/nubia/camera/multiRecord/b;->r:F

    .line 89
    iput p3, p0, Lcn/nubia/camera/multiRecord/b;->s:F

    .line 90
    iput p4, p0, Lcn/nubia/camera/multiRecord/b;->t:F

    return-void
.end method

.method public a([FI)V
    .locals 7

    .line 95
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 97
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 98
    iget v1, p0, Lcn/nubia/camera/multiRecord/b;->f:I

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/b;->n:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 103
    iget v1, p0, Lcn/nubia/camera/multiRecord/b;->g:I

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/b;->o:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c3

    .line 107
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 108
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->p:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    iget p2, p0, Lcn/nubia/camera/multiRecord/b;->j:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 p2, 0x10

    new-array v4, p2, [F

    const/4 v6, 0x0

    .line 112
    invoke-static {v4, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 114
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->r:F

    iget v1, p0, Lcn/nubia/camera/multiRecord/b;->t:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 115
    iget v3, p0, Lcn/nubia/camera/multiRecord/b;->q:F

    iget v5, p0, Lcn/nubia/camera/multiRecord/b;->s:F

    sub-float v5, v2, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v1

    const/4 v1, 0x0

    .line 116
    invoke-static {v4, v6, v3, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 118
    invoke-static {v4, v6, v0, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 119
    iget v0, p0, Lcn/nubia/camera/multiRecord/b;->s:F

    iget v3, p0, Lcn/nubia/camera/multiRecord/b;->q:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcn/nubia/camera/multiRecord/b;->t:F

    iget v5, p0, Lcn/nubia/camera/multiRecord/b;->r:F

    sub-float/2addr v3, v5

    invoke-static {v4, v6, v0, v3, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 120
    invoke-static {v4, v6, v0, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    new-array p2, p2, [F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    .line 122
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 124
    iget p1, p0, Lcn/nubia/camera/multiRecord/b;->h:I

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/b;->k:[F

    const/4 v1, 0x1

    invoke-static {p1, v1, v6, v0, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 125
    iget p1, p0, Lcn/nubia/camera/multiRecord/b;->i:I

    invoke-static {p1, v1, v6, p2, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 129
    iget p1, p0, Lcn/nubia/camera/multiRecord/b;->l:I

    const/4 p2, 0x5

    invoke-static {p2, v6, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 130
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 133
    iget p1, p0, Lcn/nubia/camera/multiRecord/b;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 134
    iget p1, p0, Lcn/nubia/camera/multiRecord/b;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 135
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    return-void
.end method
