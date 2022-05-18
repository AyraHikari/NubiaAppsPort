.class public Lc/b/a/n/k/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/k/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/k/j/c<",
        "Landroid/graphics/Bitmap;",
        "Lc/b/a/n/k/e/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lc/b/a/n/i/m/c;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lc/b/a/n/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/j/b;->a:Landroid/content/res/Resources;

    .line 3
    iput-object p2, p0, Lc/b/a/n/k/j/b;->b:Lc/b/a/n/i/m/c;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/n/i/k;)Lc/b/a/n/i/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/n/i/k<",
            "Lc/b/a/n/k/e/j;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/n/k/e/j;

    iget-object v1, p0, Lc/b/a/n/k/j/b;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lc/b/a/n/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p1}, Lc/b/a/n/k/e/j;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2
    new-instance p1, Lc/b/a/n/k/e/k;

    iget-object v1, p0, Lc/b/a/n/k/j/b;->b:Lc/b/a/n/i/m/c;

    invoke-direct {p1, v0, v1}, Lc/b/a/n/k/e/k;-><init>(Lc/b/a/n/k/e/j;Lc/b/a/n/i/m/c;)V

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
