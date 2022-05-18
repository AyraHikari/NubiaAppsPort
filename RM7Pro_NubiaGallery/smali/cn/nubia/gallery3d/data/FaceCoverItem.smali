.class public Lcn/nubia/gallery3d/data/FaceCoverItem;
.super Lcn/nubia/gallery3d/data/MediaItem;
.source "FaceCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;
    }
.end annotation


# static fields
.field public static final PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final PATHS:Ljava/lang/String; = "/cover/face/"

.field public static final TAG:Ljava/lang/String; = "FaceCoverItem"


# instance fields
.field private final mApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mFilePath:Ljava/lang/String;

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/cover/face/"

    .line 34
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/FaceCoverItem;->PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;IILjava/lang/String;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cover/face/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-static {}, Lcn/nubia/gallery3d/data/FaceCoverItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 41
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 42
    iput-object p4, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mFilePath:Ljava/lang/String;

    .line 43
    invoke-static {p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mRotation:I

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 138
    iget v0, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mRotation:I

    return v0
.end method

.method public getSelection(I)Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge_id"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance p1, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/FaceCoverItem;->mFilePath:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;-><init>(Lcn/nubia/gallery3d/data/FaceCoverItem;Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;I)V

    return-object p1
.end method

.method public requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
