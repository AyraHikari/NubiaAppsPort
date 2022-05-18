.class public final Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "MusicDiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/cache/MusicDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;


# direct methods
.method private constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 658
    iput-object p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 660
    iput-wide p3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->sequenceNumber:J

    .line 661
    iput-object p5, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 662
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V
    .locals 1

    .prologue
    .line 653
    invoke-direct/range {p0 .. p5}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 678
    invoke-static {v3}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_0
    return-void
.end method

.method public edit()Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->this$0:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$2200(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;J)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$1500(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
