.class public Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field public content:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private contentLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

.field public isLabelRequired:Z

.field public isPanorama:Z

.field public isWaitDisplayed:Z

.field public item:Lcn/nubia/gallery3d/data/MediaItem;

.field public label:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private labelLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field public mediaType:I

.field public path:Lcn/nubia/gallery3d/data/Path;

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
