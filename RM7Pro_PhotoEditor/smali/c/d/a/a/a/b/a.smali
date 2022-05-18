.class public abstract Lc/d/a/a/a/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/a/a;


# static fields
.field public static final g:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected final a:Ljava/io/File;

.field protected final b:Ljava/io/File;

.field protected final c:Lc/d/a/a/a/c/a;

.field protected d:I

.field protected e:Landroid/graphics/Bitmap$CompressFormat;

.field protected f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lc/d/a/a/a/b/a;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lc/d/a/a/a/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lc/d/a/a/a/b/a;->d:I

    sget-object v0, Lc/d/a/a/a/b/a;->g:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lc/d/a/a/a/b/a;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lc/d/a/a/a/b/a;->f:I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lc/d/a/a/a/b/a;->a:Ljava/io/File;

    iput-object p2, p0, Lc/d/a/a/a/b/a;->b:Ljava/io/File;

    iput-object p3, p0, Lc/d/a/a/a/b/a;->c:Lc/d/a/a/a/c/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDir argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Lc/d/a/a/a/b/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/io/InputStream;Lc/d/a/c/b$a;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lc/d/a/a/a/b/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v4, p0, Lc/d/a/a/a/b/a;->d:I

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v3, p0, Lc/d/a/a/a/b/a;->d:I

    invoke-static {p2, v2, p3, v3}, Lc/d/a/c/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Lc/d/a/c/b$a;I)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return v1

    :catchall_0
    move-exception p3

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {v2}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p3

    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, p2

    :goto_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    throw p3
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lc/d/a/a/a/b/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v3, p0, Lc/d/a/a/a/b/a;->d:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget-object v2, p0, Lc/d/a/a/a/b/a;->e:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lc/d/a/a/a/b/a;->f:I

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method protected d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lc/d/a/a/a/b/a;->c:Lc/d/a/a/a/c/a;

    invoke-interface {v0, p1}, Lc/d/a/a/a/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/a/a/b/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lc/d/a/a/a/b/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lc/d/a/a/a/b/a;->b:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/a/b/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lc/d/a/a/a/b/a;->b:Ljava/io/File;

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
