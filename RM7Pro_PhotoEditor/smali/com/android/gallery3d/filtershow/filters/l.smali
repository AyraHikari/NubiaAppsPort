.class public Lcom/android/gallery3d/filtershow/filters/l;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/l;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/l;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method
