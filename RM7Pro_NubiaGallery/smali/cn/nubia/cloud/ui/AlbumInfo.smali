.class public Lcn/nubia/cloud/ui/AlbumInfo;
.super Ljava/lang/Object;
.source "AlbumInfo.java"


# instance fields
.field private mCoverBitmap:Landroid/graphics/Bitmap;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mSize:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mPath:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mPath:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 22
    iget v0, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mSize:I

    return v0
.end method

.method public setCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mPath:Ljava/util/List;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcn/nubia/cloud/ui/AlbumInfo;->mSize:I

    return-void
.end method
