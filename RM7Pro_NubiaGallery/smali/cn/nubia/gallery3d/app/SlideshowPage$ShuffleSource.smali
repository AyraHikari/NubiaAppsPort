.class Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShuffleSource"
.end annotation


# static fields
.field private static final RETRY_COUNT:I = 0x5


# instance fields
.field private mLastIndex:I

.field private final mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mOrder:[I

.field private final mRandom:Ljava/util/Random;

.field private final mRepeat:Z

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;Z)V
    .locals 2

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1029
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    const-wide/16 v0, -0x1

    .line 1031
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    const/4 v0, -0x1

    .line 1032
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 1035
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 1036
    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    return-void
.end method

.method private generateOrderArray(I)V
    .locals 6

    .line 1067
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1068
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1070
    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_1
    if-lez v2, :cond_1

    .line 1074
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v4, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcn/nubia/gallery3d/common/Utils;->swap([III)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1076
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aget v3, v2, v1

    iget v4, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    .line 1077
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {v2, v1, p1}, Lcn/nubia/gallery3d/common/Utils;->swap([III)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
    .locals 1

    .line 1082
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method

.method public findItemIndex(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 0

    return p2
.end method

.method public getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 1044
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 1045
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v2, v0

    if-nez v2, :cond_1

    return-object v1

    .line 1046
    :cond_1
    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 1047
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3700(Lcn/nubia/gallery3d/data/MediaSet;I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to find image: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SlideshowPage"

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 1051
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3700(Lcn/nubia/gallery3d/data/MediaSet;I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public isLoading()Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->isLoading()Z

    move-result v0

    return v0
.end method

.method public reload()J
    .locals 4

    .line 1057
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 1058
    iget-wide v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1059
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    .line 1060
    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    .line 1061
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->generateOrderArray(I)V

    :cond_0
    return-wide v0
.end method

.method public removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method
