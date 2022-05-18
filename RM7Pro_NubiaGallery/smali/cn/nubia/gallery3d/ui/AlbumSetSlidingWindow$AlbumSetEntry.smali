.class public Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcn/nubia/gallery3d/data/MediaSet;

.field public bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field public cacheFlag:I

.field public cacheStatus:I

.field public coverDataVersion:J

.field public coverItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private coverLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

.field public isLabelRequired:Z

.field public isPanorama:Z

.field public isWaitLoadingDisplayed:Z

.field private labelLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field public mediaType:I

.field public rotation:I

.field public setDataVersion:J

.field public setPath:Lcn/nubia/gallery3d/data/Path;

.field public sourceType:I

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isLabelRequired:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcn/nubia/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
