.class public Lcn/nubia/video/player/common/Bookmarker;
.super Ljava/lang/Object;
.source "Bookmarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/common/Bookmarker$SetBookMarkTask;,
        Lcn/nubia/video/player/common/Bookmarker$Param;
    }
.end annotation


# static fields
.field private static final BOOKMARK_CACHE_FILE:Ljava/lang/String; = "bookmark"

.field private static final BOOKMARK_CACHE_MAX_BYTES:I = 0x2800

.field private static final BOOKMARK_CACHE_MAX_ENTRIES:I = 0x64

.field private static final BOOKMARK_CACHE_VERSION:I = 0x1

.field private static final HALF_MINUTE:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "Bookmarker"

.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/common/Bookmarker;->mLock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcn/nubia/video/player/common/Bookmarker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/video/player/common/Bookmarker;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/video/player/common/Bookmarker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/common/Bookmarker;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/video/player/common/Bookmarker;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/Bookmarker;->mContext:Landroid/content/Context;

    const-string v2, "bookmark"

    const/16 v3, 0x64

    const/16 v4, 0x2800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 56
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    invoke-static {v2}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 61
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/16 p1, 0x7530

    if-lt v3, p1, :cond_3

    const v1, 0x1d4c0

    if-lt v2, v1, :cond_3

    sub-int/2addr v2, p1

    if-le v3, v2, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v1, "Bookmarker"

    const-string v2, "getBookmark failed"

    .line 73
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getDuration(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/Bookmarker;->mContext:Landroid/content/Context;

    const-string v2, "bookmark"

    const/16 v3, 0x64

    const/16 v4, 0x2800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 87
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    invoke-static {v2}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 90
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 93
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v1, "Bookmarker"

    const-string v2, " getDuration from bookmark failed"

    .line 95
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setBookmark(Landroid/net/Uri;II)V
    .locals 2

    .line 40
    new-instance v0, Lcn/nubia/video/player/common/Bookmarker$Param;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/common/Bookmarker$Param;-><init>(Lcn/nubia/video/player/common/Bookmarker;Lcn/nubia/video/player/common/Bookmarker$1;)V

    .line 41
    iput-object p1, v0, Lcn/nubia/video/player/common/Bookmarker$Param;->uri:Landroid/net/Uri;

    .line 42
    iput p2, v0, Lcn/nubia/video/player/common/Bookmarker$Param;->bookmark:I

    .line 43
    iput p3, v0, Lcn/nubia/video/player/common/Bookmarker$Param;->duration:I

    .line 44
    new-instance p1, Lcn/nubia/video/player/common/Bookmarker$SetBookMarkTask;

    invoke-direct {p1, p0, v1}, Lcn/nubia/video/player/common/Bookmarker$SetBookMarkTask;-><init>(Lcn/nubia/video/player/common/Bookmarker;Lcn/nubia/video/player/common/Bookmarker$1;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcn/nubia/video/player/common/Bookmarker$Param;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/common/Bookmarker$SetBookMarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
