.class public Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Landroid/graphics/Bitmap;

.field private f:Z

.field private g:I

.field private h:F

.field private i:Z

.field final synthetic j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;ZIF)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->d:Ljava/io/File;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->e:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->g:I

    iput-boolean p5, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->f:Z

    iput p7, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->h:F

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->i:Z

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->b:Landroid/net/Uri;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->b(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->i:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->b(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->i:Z

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->b(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->b(Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-instance v4, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->c:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->M(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->j:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->d:Ljava/io/File;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->e:Landroid/graphics/Bitmap;

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->f:Z

    iget v7, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->g:I

    iget v8, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->h:F

    iget-boolean v9, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->i:Z

    invoke-virtual/range {v0 .. v9}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZ)V

    return-void
.end method
