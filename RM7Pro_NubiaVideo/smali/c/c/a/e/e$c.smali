.class Lc/c/a/e/e$c;
.super Lc/c/a/e/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/e/e$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/e$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/c/a/e/e$b;->a:I

    .line 2
    invoke-static {}, Lc/c/a/e/e;->v()V

    return-void
.end method
