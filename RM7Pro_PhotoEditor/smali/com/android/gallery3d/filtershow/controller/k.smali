.class public Lcom/android/gallery3d/filtershow/controller/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/h;


# static fields
.field public static e:Ljava/lang/String; = "ParameterColor"


# instance fields
.field protected a:Lcom/android/gallery3d/filtershow/controller/f;

.field b:[F

.field c:I

.field d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/k;->b:[F

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/k;->d:[I

    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/k;->b:[F

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    const/4 v0, 0x3

    aput p2, p1, v0

    return-void

    nop

    :array_0
    .array-data 4
        -0x7f010000
        -0x7fff0100
        -0x7fffff01
        -0x80000000
        -0x7f000001
    .end array-data
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/k;->a:Lcom/android/gallery3d/filtershow/controller/f;

    return-void
.end method

.method public a(Lcom/android/gallery3d/filtershow/controller/k;)V
    .locals 3

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/controller/k;->d:[I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/k;->d:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/k;->d:[I

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/k;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e([I)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/k;->d:[I

    return-void
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/k;->c:I

    return v0
.end method

.method public l(I)V
    .locals 2

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/k;->c:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/k;->b:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/k;->b:[F

    iget v0, p0, Lcom/android/gallery3d/filtershow/controller/k;->c:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/controller/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
