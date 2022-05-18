.class Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c(Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/BitmapFactory$Options;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->b:Landroid/graphics/BitmapFactory$Options;

    iput p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->c:I

    iput p5, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->d:I

    iput p6, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "AbstractApertureImage"

    const-string v1, "decodeBitmap E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->m:Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    new-instance v4, Lcom/android/gallery3d/filtershow/aperture/b;

    invoke-direct {v4, v1}, Lcom/android/gallery3d/filtershow/aperture/b;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iget-object v4, v3, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    const/16 v5, 0x438

    const/16 v6, 0x5a0

    invoke-static {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap failed\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iget-object v3, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iput-object v3, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->l:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->c:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->d:I

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iget-object v3, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->e:I

    invoke-static {v3, v4}, Lcom/android/gallery3d/filtershow/e/b;->t(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iput-boolean v2, v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->m:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeBitmap X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;->f:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
