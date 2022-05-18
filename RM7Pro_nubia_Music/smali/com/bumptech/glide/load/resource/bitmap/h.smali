.class public Lcom/bumptech/glide/load/resource/bitmap/h;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/q;

.field private final b:Lcom/bumptech/glide/load/engine/a/c;

.field private c:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>(Lcom/bumptech/glide/load/resource/bitmap/q;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/q;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->a:Lcom/bumptech/glide/load/resource/bitmap/q;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->b:Lcom/bumptech/glide/load/engine/a/c;

    .line 40
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->c:Lcom/bumptech/glide/load/DecodeFormat;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/i;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II)",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->a:Lcom/bumptech/glide/load/resource/bitmap/q;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->b:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->c:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/q;->a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/a/c;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/h;->b:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/h;->a(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
