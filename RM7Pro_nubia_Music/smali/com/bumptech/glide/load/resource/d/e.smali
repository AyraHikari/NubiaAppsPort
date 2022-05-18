.class public Lcom/bumptech/glide/load/resource/d/e;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/d;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Lcom/bumptech/glide/load/resource/d/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/d;

    new-instance v1, Lcom/bumptech/glide/load/b/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/b/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/i;

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
    .line 14
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/e;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
