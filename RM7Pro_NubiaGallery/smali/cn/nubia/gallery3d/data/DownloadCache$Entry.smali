.class public Lcn/nubia/gallery3d/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field protected mId:J

.field final synthetic this$0:Lcn/nubia/gallery3d/data/DownloadCache;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/DownloadCache;JLjava/io/File;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->this$0:Lcn/nubia/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-wide p2, p0, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->mId:J

    .line 256
    invoke-static {p4}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    return-void
.end method
