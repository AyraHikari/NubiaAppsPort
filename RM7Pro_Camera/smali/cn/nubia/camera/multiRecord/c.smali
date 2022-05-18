.class public Lcn/nubia/camera/multiRecord/c;
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

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/multiRecord/c;->a:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 54
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/multiRecord/c;->b:[F

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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 34
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/c;->k:[F

    .line 36
    sget-object v1, Lcn/nubia/camera/multiRecord/c;->a:[F

    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcn/nubia/camera/multiRecord/c;->l:I

    const/16 v2, 0xc

    .line 37
    iput v2, p0, Lcn/nubia/camera/multiRecord/c;->m:I

    const/4 v2, 0x0

    .line 41
    iput v2, p0, Lcn/nubia/camera/multiRecord/c;->q:F

    iput v2, p0, Lcn/nubia/camera/multiRecord/c;->r:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcn/nubia/camera/multiRecord/c;->s:F

    iput v2, p0, Lcn/nubia/camera/multiRecord/c;->t:F

    .line 62
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/c;->u:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->p:I

    const/4 p1, 0x0

    .line 64
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 67
    invoke-static {v1}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/c;->n:Ljava/nio/FloatBuffer;

    .line 68
    sget-object v0, Lcn/nubia/camera/multiRecord/c;->b:[F

    invoke-static {v0}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/c;->o:Ljava/nio/FloatBuffer;

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/c;->u:Landroid/content/Context;

    const v1, 0x7f0e004e

    invoke-static {v0, v1}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b31

    invoke-static {v1, v0}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/c;->c:I

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/c;->u:Landroid/content/Context;

    const v2, 0x7f0e004d

    invoke-static {v1, v2, p2}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    const v1, 0x8b30

    invoke-static {v1, p2}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->d:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, p1

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 72
    invoke-static {v1}, Lcn/nubia/camera/v/a;->a([I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/multiRecord/c;->e:I

    .line 73
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

    const-string v0, "CropPicture2"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "aPosition"

    .line 75
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->f:I

    const-string p2, "aTextureCoord"

    .line 76
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->g:I

    const-string p2, "uMVPMatrix"

    .line 77
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->h:I

    const-string p2, "uSTMatrix"

    .line 78
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->i:I

    const-string p2, "sTexture"

    .line 79
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/multiRecord/c;->j:I

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPositionHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/c;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mTextureCoordHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/c;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mMVPMatrixHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/c;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mSTMatrixHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/c;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mTextureHandle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/multiRecord/c;->j:I

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

    .line 144
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->e:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteProgram(I)V

    .line 145
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->c:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    .line 146
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    .line 88
    iput p1, p0, Lcn/nubia/camera/multiRecord/c;->q:F

    .line 89
    iput p2, p0, Lcn/nubia/camera/multiRecord/c;->r:F

    .line 90
    iput p3, p0, Lcn/nubia/camera/multiRecord/c;->s:F

    .line 91
    iput p4, p0, Lcn/nubia/camera/multiRecord/c;->t:F

    return-void
.end method

.method public a([FI)V
    .locals 7

    .line 96
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 98
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 99
    iget v1, p0, Lcn/nubia/camera/multiRecord/c;->f:I

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/c;->n:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 103
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    iget v1, p0, Lcn/nubia/camera/multiRecord/c;->g:I

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/c;->o:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c3

    .line 108
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 109
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->p:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 110
    iget p2, p0, Lcn/nubia/camera/multiRecord/c;->j:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 p2, 0x10

    new-array v2, p2, [F

    const/4 v6, 0x0

    .line 113
    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 115
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->r:F

    iget v1, p0, Lcn/nubia/camera/multiRecord/c;->t:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 116
    iget v4, p0, Lcn/nubia/camera/multiRecord/c;->q:F

    iget v5, p0, Lcn/nubia/camera/multiRecord/c;->s:F

    sub-float v5, v3, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    const/4 v1, 0x0

    .line 117
    invoke-static {v2, v6, v4, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 119
    invoke-static {v2, v6, v0, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 120
    iget v0, p0, Lcn/nubia/camera/multiRecord/c;->s:F

    iget v4, p0, Lcn/nubia/camera/multiRecord/c;->q:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcn/nubia/camera/multiRecord/c;->t:F

    iget v5, p0, Lcn/nubia/camera/multiRecord/c;->r:F

    sub-float/2addr v4, v5

    invoke-static {v2, v6, v0, v4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 121
    invoke-static {v2, v6, v0, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    new-array p2, p2, [F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v4, p1

    .line 123
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 125
    iget p1, p0, Lcn/nubia/camera/multiRecord/c;->h:I

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/c;->k:[F

    const/4 v1, 0x1

    invoke-static {p1, v1, v6, v0, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    iget p1, p0, Lcn/nubia/camera/multiRecord/c;->i:I

    invoke-static {p1, v1, v6, p2, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 127
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 130
    iget p1, p0, Lcn/nubia/camera/multiRecord/c;->l:I

    const/4 p2, 0x5

    invoke-static {p2, v6, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 131
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 134
    iget p1, p0, Lcn/nubia/camera/multiRecord/c;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 135
    iget p1, p0, Lcn/nubia/camera/multiRecord/c;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 136
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    return-void
.end method
