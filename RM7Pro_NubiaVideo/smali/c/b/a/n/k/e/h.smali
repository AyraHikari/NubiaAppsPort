.class public Lc/b/a/n/k/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/k/e/s;

.field private final b:Lc/b/a/n/i/m/c;

.field private c:Lc/b/a/n/a;


# direct methods
.method public constructor <init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/e/s;

    invoke-direct {v0}, Lc/b/a/n/k/e/s;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lc/b/a/n/k/e/h;-><init>(Lc/b/a/n/k/e/s;Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/n/k/e/s;Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/e/h;->a:Lc/b/a/n/k/e/s;

    .line 4
    iput-object p2, p0, Lc/b/a/n/k/e/h;->b:Lc/b/a/n/i/m/c;

    .line 5
    iput-object p3, p0, Lc/b/a/n/k/e/h;->c:Lc/b/a/n/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/e/h;->b(Landroid/os/ParcelFileDescriptor;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/ParcelFileDescriptor;II)Lc/b/a/n/i/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II)",
            "Lc/b/a/n/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/e/h;->a:Lc/b/a/n/k/e/s;

    iget-object v2, p0, Lc/b/a/n/k/e/h;->b:Lc/b/a/n/i/m/c;

    iget-object v5, p0, Lc/b/a/n/k/e/h;->c:Lc/b/a/n/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/b/a/n/k/e/s;->a(Landroid/os/ParcelFileDescriptor;Lc/b/a/n/i/m/c;IILc/b/a/n/a;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/b/a/n/k/e/h;->b:Lc/b/a/n/i/m/c;

    invoke-static {p1, p2}, Lc/b/a/n/k/e/c;->c(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)Lc/b/a/n/k/e/c;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
