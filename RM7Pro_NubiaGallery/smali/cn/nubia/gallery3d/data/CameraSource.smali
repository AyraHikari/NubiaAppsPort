.class public Lcn/nubia/gallery3d/data/CameraSource;
.super Lcn/nubia/gallery3d/data/MediaSource;
.source "CameraSource.java"


# static fields
.field private static final CAMERA_ALL_ALBUM:I = 0x0

.field private static final CAMERA_IMAGE_ALBUM:I = 0x1

.field private static final CAMERA_VIDEO_ALBUM:I = 0x2

.field private static final CAMERA_VISITOR_MODE_ALBUM:I = 0x3


# instance fields
.field mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    const-string v0, "cameracluster"

    .line 16
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 18
    new-instance p1, Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-direct {p1}, Lcn/nubia/gallery3d/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/cameracluster/all/"

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 20
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/cameracluster/image/"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 21
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/cameracluster/video/"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 22
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v0, "/cameracluster/visitor/all"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 3

    .line 27
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CameraSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/PathMatcher;->match(Lcn/nubia/gallery3d/data/Path;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 38
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

    .line 34
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/CameraAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 32
    :cond_2
    new-instance v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/CameraAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 30
    :cond_3
    new-instance v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/CameraAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0
.end method
