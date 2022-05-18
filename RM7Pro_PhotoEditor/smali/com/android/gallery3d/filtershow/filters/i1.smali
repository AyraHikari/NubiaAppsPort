.class public Lcom/android/gallery3d/filtershow/filters/i1;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field private mParameters:Lcom/android/gallery3d/filtershow/filters/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "Default"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    return-object v0
.end method

.method public getParameters()Lcom/android/gallery3d/filtershow/filters/f;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/i1;->mParameters:Lcom/android/gallery3d/filtershow/filters/f;

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/i1;->mParameters:Lcom/android/gallery3d/filtershow/filters/f;

    return-void
.end method
