.class public Lcn/nubia/gallery3d/data/GridCoverItem;
.super Lcn/nubia/gallery3d/data/MediaItem;
.source "GridCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/GridCoverItem$GridImageRequest;,
        Lcn/nubia/gallery3d/data/GridCoverItem$GridSpec;,
        Lcn/nubia/gallery3d/data/GridCoverItem$CoverEntry;
    }
.end annotation


# static fields
.field public static final DEFAULT_ROW:I = 0x2

.field public static final PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final TAG:Ljava/lang/String; = "GridCoverItem"


# instance fields
.field private final mApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mDate:J

.field private mGridSpec:Lcn/nubia/gallery3d/data/GridCoverItem$GridSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/cover/"

    .line 30
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/GridCoverItem;->PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/GridCoverItem$CoverEntry;",
            ">;JI)V"
        }
    .end annotation

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "/cover/"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-static {}, Lcn/nubia/gallery3d/data/GridCoverItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 53
    iput-object p1, p0, Lcn/nubia/gallery3d/data/GridCoverItem;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 54
    iput-wide p3, p0, Lcn/nubia/gallery3d/data/GridCoverItem;->mDate:J

    return-void
.end method


# virtual methods
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

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcn/nubia/gallery3d/data/GridCoverItem$GridImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/GridCoverItem;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/GridCoverItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-direct {v0, v1, v2, p1}, Lcn/nubia/gallery3d/data/GridCoverItem$GridImageRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;I)V

    return-object v0
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
