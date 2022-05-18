.class public Lb/a/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/c/a/f;->a:F

    .line 3
    iput v0, p0, Lb/a/c/a/f;->b:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/c/a/f;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/f;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/f;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/f;->a:F

    return v0
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/f;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/c/a/f;->b:F

    return-void
.end method

.method public f(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/c/a/f;->a:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This TextFilterSequence has Bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/c/a/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and posX= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/c/a/f;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/c/a/f;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
