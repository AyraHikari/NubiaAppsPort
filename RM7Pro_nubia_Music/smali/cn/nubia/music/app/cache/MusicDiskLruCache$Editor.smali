.class public final Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
.super Ljava/lang/Object;
.source "MusicDiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/cache/MusicDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;
    }
.end annotation


# instance fields
.field private final entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;


# direct methods
.method private constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 515
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1902(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)Z
    .locals 0

    .prologue
    .line 509
    iput-boolean p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$1800(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)V

    .line 566
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    iget-boolean v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$1800(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)V

    .line 557
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 558
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1100(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->remove(Ljava/lang/String;)Z

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$1800(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$1500(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 522
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$600(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const/4 v0, 0x0

    monitor-exit v1

    .line 525
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    monitor-enter v1

    .line 536
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 539
    :cond_0
    :try_start_1
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->entry:Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 540
    invoke-virtual {v3, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor$a;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Ljava/io/OutputStream;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v2, 0x0

    .line 547
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$1700()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 550
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 552
    return-void

    .line 550
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
