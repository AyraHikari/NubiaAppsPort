.class public Lcom/android/gallery3d/filtershow/materials/k;
.super Lcom/android/gallery3d/filtershow/materials/j;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/materials/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/k;->h()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    return-void
.end method


# virtual methods
.method public h()I
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->e:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readme.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bubble"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/r;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
