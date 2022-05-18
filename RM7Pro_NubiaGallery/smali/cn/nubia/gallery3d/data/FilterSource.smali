.class Lcn/nubia/gallery3d/data/FilterSource;
.super Lcn/nubia/gallery3d/data/MediaSource;
.source "FilterSource.java"


# static fields
.field private static final FILTER_BY_DELETE:I = 0x1

.field private static final FILTER_BY_MEDIATYPE:I


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    const-string v0, "filter"

    .line 29
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 31
    new-instance p1, Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-direct {p1}, Lcn/nubia/gallery3d/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/filter/mediatype/*/*"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FilterSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/filter/delete/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 5

    .line 41
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/PathMatcher;->match(Lcn/nubia/gallery3d/data/Path;)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 51
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    .line 53
    new-instance v1, Lcn/nubia/gallery3d/data/FilterDeleteSet;

    aget-object v0, v0, v3

    invoke-direct {v1, p1, v0}, Lcn/nubia/gallery3d/data/FilterDeleteSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/MediaSet;)V

    return-object v1

    .line 56
    :cond_0
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

    .line 45
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v0

    .line 46
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    .line 48
    new-instance v4, Lcn/nubia/gallery3d/data/FilterTypeSet;

    aget-object v2, v2, v3

    invoke-direct {v4, p1, v1, v2, v0}, Lcn/nubia/gallery3d/data/FilterTypeSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/MediaSet;I)V

    return-object v4
.end method
