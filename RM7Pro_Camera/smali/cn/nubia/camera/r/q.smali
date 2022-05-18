.class public Lcn/nubia/camera/r/q;
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

.field private k:I

.field private l:I

.field private m:I

.field private n:[F

.field private o:[F

.field private final p:I

.field private final q:I

.field private r:Ljava/nio/FloatBuffer;

.field private s:Ljava/nio/FloatBuffer;

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/r/q;->a:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 53
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/r/q;->b:[F

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
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 34
    iput-object v1, p0, Lcn/nubia/camera/r/q;->n:[F

    new-array v0, v0, [F

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/r/q;->o:[F

    .line 36
    sget-object v0, Lcn/nubia/camera/r/q;->a:[F

    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcn/nubia/camera/r/q;->p:I

    const/16 v2, 0xc

    .line 37
    iput v2, p0, Lcn/nubia/camera/r/q;->q:I

    const/4 v2, 0x0

    .line 61
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 63
    iget-object v1, p0, Lcn/nubia/camera/r/q;->o:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 65
    invoke-static {v0}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/q;->r:Ljava/nio/FloatBuffer;

    .line 66
    sget-object v0, Lcn/nubia/camera/r/q;->b:[F

    invoke-static {v0}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/q;->s:Ljava/nio/FloatBuffer;

    .line 68
    iput p2, p0, Lcn/nubia/camera/r/q;->u:I

    const v0, 0x7f0e0055

    .line 70
    invoke-static {p1, v0}, Lcn/nubia/camera/v/a;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/common/b/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0e0004

    .line 71
    invoke-static {p1, v0}, Lcn/nubia/camera/v/a;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x8b31

    invoke-static {v0, p1}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->c:I

    const v0, 0x8b30

    .line 72
    invoke-static {v0, p2}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/r/q;->d:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 73
    invoke-static {v0}, Lcn/nubia/camera/v/a;->a([I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/r/q;->e:I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vertexShader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " fragmentShader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mProgram "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Transformation"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "aPosition"

    .line 76
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->f:I

    const-string p1, "aTextureCoord"

    .line 77
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->g:I

    const-string p1, "uMVPMatrix"

    .line 78
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->h:I

    const-string p1, "uSTMatrix"

    .line 79
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->i:I

    const-string p1, "sTexture"

    .line 80
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->j:I

    const-string p1, "H"

    .line 81
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->k:I

    const-string p1, "width"

    .line 82
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->l:I

    const-string p1, "height"

    .line 83
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/r/q;->m:I

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPositionHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mTextureCoordHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mMVPMatrixHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mSTMatrixHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mTextureHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mTransformationHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mWidthHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mHeightHandle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/r/q;->m:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 139
    iget v0, p0, Lcn/nubia/camera/r/q;->e:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteProgram(I)V

    .line 140
    iget v0, p0, Lcn/nubia/camera/r/q;->c:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    .line 141
    iget v0, p0, Lcn/nubia/camera/r/q;->d:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    return-void
.end method

.method public a(I[FII)V
    .locals 6

    .line 96
    iput p1, p0, Lcn/nubia/camera/r/q;->t:I

    .line 98
    iget p1, p0, Lcn/nubia/camera/r/q;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 99
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 101
    iget p1, p0, Lcn/nubia/camera/r/q;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 102
    iget v0, p0, Lcn/nubia/camera/r/q;->f:I

    iget-object v5, p0, Lcn/nubia/camera/r/q;->r:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 106
    iget p1, p0, Lcn/nubia/camera/r/q;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 107
    iget v0, p0, Lcn/nubia/camera/r/q;->g:I

    iget-object v5, p0, Lcn/nubia/camera/r/q;->s:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    const p1, 0x84c3

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 113
    iget p1, p0, Lcn/nubia/camera/r/q;->u:I

    iget v0, p0, Lcn/nubia/camera/r/q;->t:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    iget p1, p0, Lcn/nubia/camera/r/q;->j:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 115
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 117
    iget p1, p0, Lcn/nubia/camera/r/q;->k:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 118
    iget p1, p0, Lcn/nubia/camera/r/q;->l:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 119
    iget p1, p0, Lcn/nubia/camera/r/q;->m:I

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 120
    iget p1, p0, Lcn/nubia/camera/r/q;->h:I

    iget-object p2, p0, Lcn/nubia/camera/r/q;->n:[F

    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 121
    iget p1, p0, Lcn/nubia/camera/r/q;->i:I

    iget-object p2, p0, Lcn/nubia/camera/r/q;->o:[F

    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 122
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 125
    iget p1, p0, Lcn/nubia/camera/r/q;->p:I

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 126
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 129
    iget p1, p0, Lcn/nubia/camera/r/q;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 130
    iget p1, p0, Lcn/nubia/camera/r/q;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 131
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    return-void
.end method
