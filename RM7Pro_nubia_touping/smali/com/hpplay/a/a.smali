.class public Lcom/hpplay/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x4

.field private static final b:[F

.field private static final c:[F


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 28
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hpplay/a/a;->b:[F

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hpplay/a/a;->c:[F

    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 34
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

.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x88e8

    const/4 v0, -0x1

    const/4 v6, 0x1

    const v5, 0x8892

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/hpplay/a/a;->d:I

    .line 42
    iput v0, p0, Lcom/hpplay/a/a;->e:I

    .line 45
    new-array v0, v6, [I

    .line 46
    sget-object v1, Lcom/hpplay/a/a;->b:[F

    invoke-static {v1}, Lcom/hpplay/a/f;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/hpplay/a/a;->c:[F

    invoke-static {v2}, Lcom/hpplay/a/f;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 49
    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 50
    aget v3, v0, v4

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 51
    sget-object v3, Lcom/hpplay/a/a;->b:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v5, v3, v1, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 52
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 53
    aget v1, v0, v4

    iput v1, p0, Lcom/hpplay/a/a;->d:I

    .line 55
    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 56
    aget v1, v0, v4

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 57
    sget-object v1, Lcom/hpplay/a/a;->c:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v5, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 58
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 59
    aget v0, v0, v4

    iput v0, p0, Lcom/hpplay/a/a;->e:I

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 63
    new-array v0, v4, [I

    .line 64
    iget v1, p0, Lcom/hpplay/a/a;->d:I

    if-eq v1, v2, :cond_0

    .line 65
    iget v1, p0, Lcom/hpplay/a/a;->d:I

    aput v1, v0, v3

    .line 66
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 67
    iput v2, p0, Lcom/hpplay/a/a;->d:I

    .line 69
    :cond_0
    iget v1, p0, Lcom/hpplay/a/a;->e:I

    if-eq v1, v2, :cond_1

    .line 70
    iget v1, p0, Lcom/hpplay/a/a;->e:I

    aput v1, v0, v3

    .line 71
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 72
    iput v2, p0, Lcom/hpplay/a/a;->e:I

    .line 74
    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/hpplay/a/a;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/hpplay/a/a;->e:I

    return v0
.end method
