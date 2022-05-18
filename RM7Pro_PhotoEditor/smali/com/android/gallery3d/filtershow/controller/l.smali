.class public Lcom/android/gallery3d/filtershow/controller/l;
.super Lcom/android/gallery3d/filtershow/controller/b;
.source ""


# static fields
.field public static i:Ljava/lang/String; = "ParameterHue"


# instance fields
.field h:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public e()[F
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/l;->h:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/b;->x()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/l;->h:[F

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/controller/l;->i:Ljava/lang/String;

    return-object v0
.end method
