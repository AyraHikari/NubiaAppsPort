.class public Lc/b/a/n/k/e/i;
.super Lc/b/a/n/k/e/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc/b/a/n/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/n/k/e/d;-><init>(Lc/b/a/n/i/m/c;)V

    return-void
.end method


# virtual methods
.method protected b(Lc/b/a/n/i/m/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p2, p1, p3, p4}, Lc/b/a/n/k/e/r;->b(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
