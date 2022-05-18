.class Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;
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
    name = "SequentialSource"
.end annotation


# static fields
.field private static final DATA_SIZE:I = 0x20


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStart:I

.field private mDataVersion:J

.field private final mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private final mRepeat:Z


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;Z)V
    .locals 2

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1099
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    const-wide/16 v0, -0x1

    .line 1100
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 1105
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 1106
    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mRepeat:Z

    return-void
.end method


# virtual methods
.method public addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method

.method public findItemIndex(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 1

    .line 1110
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I

    move-result p1

    return p1
.end method

.method public getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 1114
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1116
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mRepeat:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1117
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 1119
    :cond_0
    rem-int/2addr p1, v1

    .line 1121
    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v1, :cond_2

    if-lt p1, v0, :cond_3

    .line 1122
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 1123
    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 1124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 1127
    :cond_3
    iget v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v1, :cond_5

    if-lt p1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcn/nubia/gallery3d/data/MediaItem;

    :cond_5
    :goto_0
    return-object v2
.end method

.method public isLoading()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->isLoading()Z

    move-result v0

    return v0
.end method

.method public reload()J
    .locals 4

    .line 1131
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 1132
    iget-wide v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1133
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 1134
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1136
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    return-wide v0
.end method

.method public removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSet;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method
