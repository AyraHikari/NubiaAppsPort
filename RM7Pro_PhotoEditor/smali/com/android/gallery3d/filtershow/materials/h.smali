.class public Lcom/android/gallery3d/filtershow/materials/h;
.super Lcom/android/gallery3d/filtershow/materials/j;
.source ""


# instance fields
.field private g:Lcom/android/gallery3d/filtershow/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/materials/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/h;->i()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    if-eqz p3, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/d/b;

    iget p3, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    invoke-direct {p1, p3, p2}, Lcom/android/gallery3d/filtershow/d/b;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/gallery3d/filtershow/d/a;

    iget p2, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    invoke-direct {p1, p2}, Lcom/android/gallery3d/filtershow/d/a;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/h;->g:Lcom/android/gallery3d/filtershow/d/a;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/materials/g;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/h;->g:Lcom/android/gallery3d/filtershow/d/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/d/a;->d()V

    return-void
.end method

.method public h()Lcom/android/gallery3d/filtershow/d/a;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/h;->g:Lcom/android/gallery3d/filtershow/d/a;

    return-object v0
.end method

.method public i()I
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

    const-string v2, "border"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/r;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
