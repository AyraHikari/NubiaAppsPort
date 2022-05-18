.class public Lcom/android/gallery3d/filtershow/filters/d0;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# instance fields
.field private m:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const p1, 0x7f080184

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/d0;->m:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/d0;->n:I

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/d0;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/d0;->m:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/d0;->n:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/d0;-><init>(Ljava/lang/String;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V

    return-object v0
.end method

.method public k0()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/d0;->m:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object v0
.end method
