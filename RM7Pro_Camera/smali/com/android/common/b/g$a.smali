.class Lcom/android/common/b/g$a;
.super Lcom/android/common/b/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/common/b/g$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/common/b/g$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/common/b/g$a;->a:I

    .line 302
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method
