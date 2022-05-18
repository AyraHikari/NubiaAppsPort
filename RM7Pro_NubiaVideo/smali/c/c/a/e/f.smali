.class public Lc/c/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/e/g;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lc/c/a/e/f;->a:[I

    return-void
.end method


# virtual methods
.method public a(I[II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/f;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/f;->a:[I

    aget v0, v0, v2

    return v0
.end method
