.class Lcn/nubia/gallery3d/data/ComboSource;
.super Lcn/nubia/gallery3d/data/MediaSource;
.source "ComboSource.java"


# static fields
.field private static final COMBO_ALBUM:I = 0x1

.field private static final COMBO_ALBUMSET:I


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    const-string v0, "combo"

    .line 28
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ComboSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 30
    new-instance p1, Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-direct {p1}, Lcn/nubia/gallery3d/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ComboSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/combo/*"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 32
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ComboSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/combo/*/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 5

    .line 38
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 43
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ComboSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 44
    iget-object v3, p0, Lcn/nubia/gallery3d/data/ComboSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/data/PathMatcher;->match(Lcn/nubia/gallery3d/data/Path;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    new-instance v3, Lcn/nubia/gallery3d/data/ComboAlbum;

    aget-object v2, v0, v2

    .line 51
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-direct {v3, p1, v1, v0}, Lcn/nubia/gallery3d/data/ComboAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;[Lcn/nubia/gallery3d/data/MediaSet;Ljava/lang/String;)V

    return-object v3

    .line 46
    :cond_1
    new-instance v2, Lcn/nubia/gallery3d/data/ComboAlbumSet;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/ComboSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    aget-object v0, v0, v4

    .line 47
    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-direct {v2, p1, v3, v0}, Lcn/nubia/gallery3d/data/ComboAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;[Lcn/nubia/gallery3d/data/MediaSet;)V

    return-object v2

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
