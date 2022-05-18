.class Lc/b/a/n/k/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Lc/b/a/l/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/i/m/c;


# direct methods
.method public constructor <init>(Lc/b/a/n/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/h/h;->a:Lc/b/a/n/i/m/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/l/a;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/h/h;->b(Lc/b/a/l/a;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/b/a/l/a;II)Lc/b/a/n/i/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/l/a;",
            "II)",
            "Lc/b/a/n/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/b/a/l/a;->j()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/b/a/n/k/h/h;->a:Lc/b/a/n/i/m/c;

    invoke-static {p1, p2}, Lc/b/a/n/k/e/c;->c(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)Lc/b/a/n/k/e/c;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method
