.class Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcn/nubia/gallery3d/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView$1;)V
    .locals 0

    .line 772
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    return-void
.end method

.method public pop()Lcn/nubia/gallery3d/ui/TileImageView$Tile;
    .locals 2

    .line 776
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    if-eqz v0, :cond_0

    .line 777
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mNext:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    :cond_0
    return-object v0
.end method

.method public push(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z
    .locals 2

    .line 782
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 783
    :goto_0
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mNext:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    .line 784
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    return v1
.end method
