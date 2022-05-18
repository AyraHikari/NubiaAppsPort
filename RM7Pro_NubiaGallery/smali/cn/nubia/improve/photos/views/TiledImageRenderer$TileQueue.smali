.class Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/photos/views/TiledImageRenderer$1;)V
    .locals 0

    .line 749
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;-><init>()V

    return-void
.end method

.method private contains(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z
    .locals 1

    .line 772
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 777
    :cond_0
    iget-object v0, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mNext:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 783
    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    return-void
.end method

.method public pop()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
    .locals 2

    .line 753
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    if-eqz v0, :cond_0

    .line 755
    iget-object v1, v0, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mNext:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    :cond_0
    return-object v0
.end method

.method public push(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z
    .locals 2

    .line 761
    invoke-direct {p0, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->contains(Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "TiledImageRenderer"

    const-string v0, "Attempting to add a tile already in the queue!"

    .line 762
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 765
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 766
    :cond_1
    iput-object v0, p1, Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;->mNext:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    .line 767
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    return v1
.end method
