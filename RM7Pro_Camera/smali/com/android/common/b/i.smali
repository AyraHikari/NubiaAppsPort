.class public Lcom/android/common/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lcom/android/common/b/i;->a:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/android/common/b/i;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 18
    invoke-static {}, Lcom/android/common/b/g;->d()I

    .line 19
    iget-object v0, p0, Lcom/android/common/b/i;->a:[I

    aget v0, v0, v2

    return v0
.end method

.method public a(I[II)V
    .locals 0

    .line 28
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 29
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method
