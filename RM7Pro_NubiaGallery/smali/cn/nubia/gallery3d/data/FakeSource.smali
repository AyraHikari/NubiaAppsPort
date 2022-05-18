.class public Lcn/nubia/gallery3d/data/FakeSource;
.super Lcn/nubia/gallery3d/data/MediaSource;
.source "FakeSource.java"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;


# direct methods
.method protected constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    const-string v0, "fake"

    .line 11
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FakeSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 13
    new-instance p1, Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-direct {p1}, Lcn/nubia/gallery3d/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FakeSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/fake/newfolder"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 3

    .line 19
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FakeSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/PathMatcher;->match(Lcn/nubia/gallery3d/data/Path;)I

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcn/nubia/gallery3d/data/NewFolderAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FakeSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/NewFolderAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 24
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
.end method
