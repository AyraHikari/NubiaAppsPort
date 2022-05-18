.class public Lcom/android/gallery3d/filtershow/pipeline/h;
.super Lcom/android/gallery3d/filtershow/pipeline/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/pipeline/h$c;,
        Lcom/android/gallery3d/filtershow/pipeline/h$d;,
        Lcom/android/gallery3d/filtershow/pipeline/h$b;
    }
.end annotation


# instance fields
.field private d:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/pipeline/j;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/h;->d:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    return-void
.end method


# virtual methods
.method public b(Lcom/android/gallery3d/filtershow/pipeline/j$a;)Lcom/android/gallery3d/filtershow/pipeline/j$b;
    .locals 12

    check-cast p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->b:Landroid/net/Uri;

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->c:Ljava/io/File;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->h:Landroid/graphics/Bitmap;

    iget-object v7, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iget-boolean v8, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->e:Z

    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->i:Z

    new-instance v9, Lcom/android/gallery3d/filtershow/g/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/h;->d:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    new-instance v6, Lcom/android/gallery3d/filtershow/pipeline/h$a;

    invoke-direct {v6, p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/h$a;-><init>(Lcom/android/gallery3d/filtershow/pipeline/h;Z)V

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/g/b;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/g/b$e;)V

    iget v0, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->f:I

    iget v10, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->g:F

    iget-boolean v11, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->i:Z

    move-object v6, v9

    move v9, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/filtershow/g/b;->n(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ZIFZ)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/h$c;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/pipeline/h$c;-><init>()V

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/pipeline/h$c;->a:Landroid/net/Uri;

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/pipeline/h$b;->i:Z

    iput-boolean p1, v1, Lcom/android/gallery3d/filtershow/pipeline/h$c;->b:Z

    return-object v1
.end method

.method public f(Lcom/android/gallery3d/filtershow/pipeline/j$b;)V
    .locals 2

    check-cast p1, Lcom/android/gallery3d/filtershow/pipeline/h$c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/h;->d:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/h$c;->a:Landroid/net/Uri;

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/pipeline/h$c;->b:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d(Landroid/net/Uri;Z)V

    return-void
.end method

.method public g(Lcom/android/gallery3d/filtershow/pipeline/j$c;)V
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/pipeline/h$d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/pipeline/h$d;

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/pipeline/h$d;->a:Landroid/net/Uri;

    iget-boolean p1, p1, Lcom/android/gallery3d/filtershow/pipeline/h$d;->b:Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/h;->d:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-virtual {v1, v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->c(Landroid/net/Uri;Z)V

    :cond_0
    return-void
.end method

.method public k(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZ)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/h$b;-><init>()V

    iput-object p1, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->a:Landroid/net/Uri;

    iput-object p2, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->b:Landroid/net/Uri;

    iput-object p3, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->c:Ljava/io/File;

    iput-object p4, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-boolean p6, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->e:Z

    iput p7, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->f:I

    iput p8, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->g:F

    iput-object p5, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->h:Landroid/graphics/Bitmap;

    iput-boolean p9, v0, Lcom/android/gallery3d/filtershow/pipeline/h$b;->i:Z

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/j;->h(Lcom/android/gallery3d/filtershow/pipeline/j$a;)Z

    return-void
.end method
