.class public Lc/c/a/e/b;
.super Lc/c/a/e/l;
.source "SourceFile"


# instance fields
.field protected t:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/c/a/e/b;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lc/c/a/e/l;-><init>(Z)V

    .line 3
    iput-object p1, p0, Lc/c/a/e/b;->t:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected w(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected x()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b;->t:Landroid/graphics/Bitmap;

    return-object v0
.end method
