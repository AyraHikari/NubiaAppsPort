.class Lcom/android/gallery3d/filtershow/materials/t/d$a;
.super Lc/c/a/f/g/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/t/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/t/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/f/g/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/android/gallery3d/filtershow/materials/t/b;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/t/d;Lcom/android/gallery3d/filtershow/materials/t/b;)V
    .locals 0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/t/d$a;->b:Lcom/android/gallery3d/filtershow/materials/t/b;

    invoke-direct {p0}, Lc/c/a/f/g/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lc/c/a/e/c;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MaterialDownload onFailure msg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MaterialDownload"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/t/d$a;->b:Lcom/android/gallery3d/filtershow/materials/t/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/gallery3d/filtershow/materials/t/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(JJZ)V
    .locals 1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MaterialDownload onLoading total = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " current = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "MaterialDownload"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lcom/android/gallery3d/filtershow/materials/t/d$a;->b:Lcom/android/gallery3d/filtershow/materials/t/b;

    if-eqz p5, :cond_0

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/materials/t/b;->b(JJ)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "MaterialDownload"

    const-string v1, "MaterialDownload onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/d$a;->b:Lcom/android/gallery3d/filtershow/materials/t/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/materials/t/b;->start()V

    :cond_0
    return-void
.end method

.method public e(Lc/c/a/f/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/f/d<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string p1, "MaterialDownload"

    const-string v0, "MaterialDownload onSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/t/d$a;->b:Lcom/android/gallery3d/filtershow/materials/t/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/materials/t/b;->c()V

    :cond_0
    return-void
.end method
