.class public final Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p2, "entry"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 791
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p2, "x1"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;

    .prologue
    .line 785
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 785
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->hasErrors:Z

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
    .line 865
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1900(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)V

    .line 866
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
    .line 852
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1900(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)V

    .line 854
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1900(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 815
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    monitor-enter v1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 802
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$600(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    const/4 v0, 0x0

    monitor-exit v1

    .line 805
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    monitor-enter v1

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 830
    :cond_0
    :try_start_1
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->entry:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 840
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1800()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 845
    return-void

    .line 843
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 844
    throw v2

    .line 843
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
