.class public Lcn/nubia/camera/v/c;
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

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/v/c;->a:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/v/c;->b:[F

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/v/c;->k:[F

    .line 28
    sget-object v1, Lcn/nubia/camera/v/c;->a:[F

    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcn/nubia/camera/v/c;->l:I

    const/16 v2, 0xc

    .line 29
    iput v2, p0, Lcn/nubia/camera/v/c;->m:I

    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 56
    invoke-static {v1}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/v/c;->n:Ljava/nio/FloatBuffer;

    .line 57
    sget-object v0, Lcn/nubia/camera/v/c;->b:[F

    invoke-static {v0}, Lcn/nubia/camera/v/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/v/c;->o:Ljava/nio/FloatBuffer;

    .line 59
    iput p3, p0, Lcn/nubia/camera/v/c;->p:I

    .line 60
    iput p4, p0, Lcn/nubia/camera/v/c;->q:I

    const p3, 0x8b31

    .line 62
    invoke-static {p3, p1}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/v/c;->c:I

    const p3, 0x8b30

    .line 63
    invoke-static {p3, p2}, Lcn/nubia/camera/v/a;->a(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/v/c;->d:I

    const/4 p3, 0x2

    new-array p3, p3, [I

    aput p1, p3, v2

    const/4 p4, 0x1

    aput p2, p3, p4

    .line 64
    invoke-static {p3}, Lcn/nubia/camera/v/a;->a([I)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/v/c;->e:I

    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vertexShader "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " fragmentShader "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mProgram "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Picture"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "aPosition"

    .line 67
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/v/c;->f:I

    const-string p1, "aTextureCoord"

    .line 68
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/v/c;->g:I

    const-string p1, "uMVPMatrix"

    .line 69
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/v/c;->h:I

    const-string p1, "uSTMatrix"

    .line 70
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/v/c;->i:I

    const-string p1, "uTextureSampler"

    .line 71
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/v/c;->j:I

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPositionHandle "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/nubia/camera/v/c;->f:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " mTextureCoordHandle "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/nubia/camera/v/c;->g:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " mMVPMatrixHandle "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/nubia/camera/v/c;->h:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " mSTMatrixHandle "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/nubia/camera/v/c;->i:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " mTextureHandle "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcn/nubia/camera/v/c;->j:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 115
    iget v0, p0, Lcn/nubia/camera/v/c;->q:I

    return v0
.end method

.method public a([F)V
    .locals 7

    .line 84
    iget v0, p0, Lcn/nubia/camera/v/c;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 86
    iget v0, p0, Lcn/nubia/camera/v/c;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 87
    iget v1, p0, Lcn/nubia/camera/v/c;->f:I

    iget-object v6, p0, Lcn/nubia/camera/v/c;->n:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 91
    iget v0, p0, Lcn/nubia/camera/v/c;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 92
    iget v1, p0, Lcn/nubia/camera/v/c;->g:I

    iget-object v6, p0, Lcn/nubia/camera/v/c;->o:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c3

    .line 96
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 97
    iget v0, p0, Lcn/nubia/camera/v/c;->q:I

    iget v1, p0, Lcn/nubia/camera/v/c;->p:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    iget v0, p0, Lcn/nubia/camera/v/c;->j:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 100
    iget v0, p0, Lcn/nubia/camera/v/c;->h:I

    iget-object v1, p0, Lcn/nubia/camera/v/c;->k:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 101
    iget v0, p0, Lcn/nubia/camera/v/c;->i:I

    invoke-static {v0, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 102
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 105
    iget p1, p0, Lcn/nubia/camera/v/c;->l:I

    const/4 v0, 0x5

    invoke-static {v0, v3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 106
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    .line 109
    iget p1, p0, Lcn/nubia/camera/v/c;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 110
    iget p1, p0, Lcn/nubia/camera/v/c;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 111
    invoke-static {}, Lcn/nubia/camera/v/a;->a()V

    return-void
.end method

.method public a([FI)V
    .locals 0

    .line 78
    iput p2, p0, Lcn/nubia/camera/v/c;->p:I

    .line 79
    invoke-virtual {p0, p1}, Lcn/nubia/camera/v/c;->a([F)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 119
    iget v0, p0, Lcn/nubia/camera/v/c;->e:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteProgram(I)V

    .line 120
    iget v0, p0, Lcn/nubia/camera/v/c;->c:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    .line 121
    iget v0, p0, Lcn/nubia/camera/v/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES32;->glDeleteShader(I)V

    return-void
.end method
