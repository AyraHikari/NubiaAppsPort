.class public Lcn/nubia/music/online/model/RadioModel;
.super Lcn/nubia/music/online/model/MediaModel;
.source "RadioModel.java"


# instance fields
.field public mRadioType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/online/model/MediaModel;-><init>(Landroid/content/Context;I)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/online/model/RadioModel;->mRadioType:I

    .line 14
    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcn/nubia/music/online/model/RadioModel;->mIsLocal:Z

    .line 31
    return v0
.end method

.method public createFromPracelable(Landroid/content/Context;Landroid/os/Parcelable;)Z
    .locals 2

    .prologue
    .line 17
    check-cast p2, Lcn/nubia/music/online/data/RadioEntry;

    .line 18
    if-eqz p2, :cond_0

    .line 19
    iget-object v0, p2, Lcn/nubia/music/online/data/RadioEntry;->mRadioName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/RadioModel;->mTitle:Ljava/lang/String;

    .line 20
    iget-object v0, p2, Lcn/nubia/music/online/data/RadioEntry;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/RadioModel;->mImageUrl:Ljava/lang/String;

    .line 21
    iget-object v0, p2, Lcn/nubia/music/online/data/RadioEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v0, p0, Lcn/nubia/music/online/model/RadioModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 22
    iget-object v0, p2, Lcn/nubia/music/online/data/RadioEntry;->mRadioId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/online/model/RadioModel;->mMediaId:J

    .line 23
    iget v0, p2, Lcn/nubia/music/online/data/RadioEntry;->mType:I

    iput v0, p0, Lcn/nubia/music/online/model/RadioModel;->mRadioType:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/online/model/RadioModel;->mIsLocal:Z

    .line 26
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
