.class public Lcn/nubia/cloud/ui/CloudSource;
.super Lcn/nubia/gallery3d/data/MediaSource;
.source "CloudSource.java"


# static fields
.field public static final ALBUM_PATH:Lcn/nubia/gallery3d/data/Path;

.field private static final NUBIACLOUD_ALBUM:I = 0x1

.field private static final NUBIACLOUD_ALBUMSET:I = 0x0

.field private static final NUBIACLOUD_IMAGE:I = 0x3

.field private static final NUBIACLOUD_TEMP_ALBUMSET:I = 0x2

.field public static final RECENT_EMPTY_ITEM:Ljava/lang/String; = "/baiduxcloud/empty_prompt"

.field private static final TAG:Ljava/lang/String; = "CloudSource"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/nubiacloud/all/cloud"

    .line 22
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/ui/CloudSource;->ALBUM_PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    const-string v0, "nubiacloud"

    .line 28
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 30
    new-instance p1, Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-direct {p1}, Lcn/nubia/gallery3d/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/nubiacloud/all"

    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 32
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/nubiacloud/all/cloud"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/nubiacloud/all/cloud/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 34
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/nubiacloud/all/cloud/item/*"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 8

    .line 39
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/PathMatcher;->match(Lcn/nubia/gallery3d/data/Path;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudSource"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Lcn/nubia/cloud/ui/CloudMediaItem;

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, v0, v1}, Lcn/nubia/cloud/ui/CloudMediaItem;-><init>(Ljava/lang/String;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object p1

    .line 48
    :cond_1
    new-instance v0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/improve/xcloud/XCloudAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 44
    :cond_2
    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbum;

    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/cloud/ui/CloudAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    .line 41
    :cond_3
    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbumSet;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0
.end method
