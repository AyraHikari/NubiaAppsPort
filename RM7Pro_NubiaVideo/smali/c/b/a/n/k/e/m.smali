.class public Lc/b/a/n/k/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Lc/b/a/n/j/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/e;Lc/b/a/n/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/n/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/e/m;->a:Lc/b/a/n/e;

    .line 3
    iput-object p2, p0, Lc/b/a/n/k/e/m;->b:Lc/b/a/n/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/j/g;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/e/m;->b(Lc/b/a/n/j/g;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/b/a/n/j/g;II)Lc/b/a/n/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/g;",
            "II)",
            "Lc/b/a/n/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/b/a/n/j/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/b/a/n/k/e/m;->a:Lc/b/a/n/e;

    invoke-interface {v1, v0, p2, p3}, Lc/b/a/n/e;->a(Ljava/lang/Object;II)Lc/b/a/n/i/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    const-string v2, "ImageVideoDecoder"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to load image from stream, trying FileDescriptor"

    .line 4
    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lc/b/a/n/j/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lc/b/a/n/k/e/m;->b:Lc/b/a/n/e;

    invoke-interface {v0, p1, p2, p3}, Lc/b/a/n/e;->a(Ljava/lang/Object;II)Lc/b/a/n/i/k;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
