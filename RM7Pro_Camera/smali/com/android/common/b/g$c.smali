.class Lcom/android/common/b/g$c;
.super Lcom/android/common/b/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lcom/android/common/b/g$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/common/b/g$c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/common/b/g$c;->a:I

    .line 290
    invoke-static {}, Lcom/android/common/b/g;->d()I

    return-void
.end method
