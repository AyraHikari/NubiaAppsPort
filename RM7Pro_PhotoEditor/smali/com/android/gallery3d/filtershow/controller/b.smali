.class public Lcom/android/gallery3d/filtershow/controller/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/m;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/android/gallery3d/filtershow/controller/f;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Lcom/android/gallery3d/filtershow/controller/g;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/b;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/b;->d:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/controller/b;->f:I

    iput p3, p0, Lcom/android/gallery3d/filtershow/controller/b;->d:I

    iput p4, p0, Lcom/android/gallery3d/filtershow/controller/b;->c:I

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/b;->b:Lcom/android/gallery3d/filtershow/controller/f;

    return-void
.end method

.method public a(Lcom/android/gallery3d/filtershow/controller/h;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/controller/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/b;

    iget v0, p1, Lcom/android/gallery3d/filtershow/controller/b;->c:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->c:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/controller/b;->d:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->d:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/controller/b;->e:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->e:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/controller/b;->f:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/b;->f:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->d:I

    return v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/b;->f:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/b;->g:Lcom/android/gallery3d/filtershow/controller/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/g;->a()V

    :cond_0
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/b;->c:I

    return v0
.end method
