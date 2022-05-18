.class Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;
.super Ljava/io/FilterOutputStream;
.source "MusicDiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    .line 570
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Ljava/io/OutputStream;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->access$1902(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 599
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->access$1902(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->access$1902(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 583
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->access$1902(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
