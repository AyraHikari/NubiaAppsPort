.class Lcom/hpplay/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/a/c;->a(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/nio/ByteBuffer;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lcom/hpplay/a/c;


# direct methods
.method constructor <init>(Lcom/hpplay/a/c;Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V
    .locals 1

    .prologue
    .line 185
    iput-object p1, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    iput-object p2, p0, Lcom/hpplay/a/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hpplay/a/c$1;->b:Ljava/nio/ByteBuffer;

    iput p4, p0, Lcom/hpplay/a/c$1;->c:I

    iput-wide p5, p0, Lcom/hpplay/a/c$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 188
    const/4 v1, 0x0

    .line 190
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/hpplay/a/c$1;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    invoke-static {v0}, Lcom/hpplay/a/c;->b(Lcom/hpplay/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    invoke-static {v1}, Lcom/hpplay/a/c;->c(Lcom/hpplay/a/c;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 192
    iget-object v0, p0, Lcom/hpplay/a/c$1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 193
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 195
    iget v0, p0, Lcom/hpplay/a/c$1;->c:I

    if-eq v0, v3, :cond_1

    .line 196
    iget-object v0, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    .line 197
    invoke-static {v0}, Lcom/hpplay/a/c;->b(Lcom/hpplay/a/c;)I

    move-result v0

    iget v1, p0, Lcom/hpplay/a/c$1;->c:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    .line 198
    invoke-static {v1}, Lcom/hpplay/a/c;->c(Lcom/hpplay/a/c;)I

    move-result v1

    iget v2, p0, Lcom/hpplay/a/c$1;->c:I

    div-int/2addr v1, v2

    const/4 v2, 0x1

    .line 196
    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 200
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    const-string v0, "EglSurfaceBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    invoke-static {v2}, Lcom/hpplay/a/c;->b(Lcom/hpplay/a/c;)I

    move-result v2

    iget v3, p0, Lcom/hpplay/a/c$1;->c:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    invoke-static {v2}, Lcom/hpplay/a/c;->c(Lcom/hpplay/a/c;)I

    move-result v2

    iget v3, p0, Lcom/hpplay/a/c$1;->c:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame as \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/a/c$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hpplay/a/c$1;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    if-eqz v7, :cond_0

    .line 226
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 234
    :cond_0
    :goto_1
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    invoke-static {v0}, Lcom/hpplay/a/c;->b(Lcom/hpplay/a/c;)I

    move-result v3

    iget-object v0, p0, Lcom/hpplay/a/c$1;->e:Lcom/hpplay/a/c;

    invoke-static {v0}, Lcom/hpplay/a/c;->c(Lcom/hpplay/a/c;)I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 221
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 224
    if-eqz v1, :cond_0

    .line 226
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 228
    :catch_1
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 228
    :catch_2
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_2

    .line 226
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 230
    :cond_2
    :goto_4
    throw v0

    .line 228
    :catch_3
    move-exception v1

    .line 229
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 224
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 220
    :catch_4
    move-exception v0

    goto :goto_2
.end method
