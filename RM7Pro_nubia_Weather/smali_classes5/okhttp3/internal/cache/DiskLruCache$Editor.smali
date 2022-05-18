.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field private final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .prologue
    .line 847
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 849
    invoke-static {p2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 850
    return-void

    .line 849
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "x1"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .param p3, "x2"    # Lokhttp3/internal/cache/DiskLruCache$1;

    .prologue
    .line 842
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$2100(Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .prologue
    .line 842
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/cache/DiskLruCache$Editor;)[Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .prologue
    .line 842
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    .line 946
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    .line 947
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 949
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 950
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 952
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 953
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .prologue
    .line 957
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    .line 958
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 960
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 961
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    .line 930
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 933
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 934
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 936
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 937
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    return-void
.end method

.method detach()V
    .locals 3

    .prologue
    .line 859
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 860
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 862
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 869
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 863
    .restart local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public newSink(I)Lokio/Sink;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 897
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v4

    .line 898
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_0

    .line 899
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 921
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 901
    :cond_0
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 902
    invoke-static {}, Lokhttp3/internal/cache/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    monitor-exit v4

    .line 914
    :goto_0
    return-object v3

    .line 904
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 905
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, p1

    .line 907
    :cond_2
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v0, v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v3

    invoke-interface {v3, v0}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 914
    .local v2, "sink":Lokio/Sink;
    :try_start_3
    new-instance v3, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v4

    goto :goto_0

    .line 911
    .end local v2    # "sink":Lokio/Sink;
    :catch_0
    move-exception v1

    .line 912
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lokhttp3/internal/cache/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newSource(I)Lokio/Source;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 876
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v2

    .line 877
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_0

    .line 878
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 880
    :cond_0
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eq v3, p0, :cond_2

    .line 881
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :goto_0
    return-object v1

    .line 884
    :cond_2
    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-static {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
