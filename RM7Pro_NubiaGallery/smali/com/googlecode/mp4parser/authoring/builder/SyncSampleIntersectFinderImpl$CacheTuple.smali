.class public Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;
.super Ljava/lang/Object;
.source "SyncSampleIntersectFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheTuple"
.end annotation


# instance fields
.field movie:Lcom/googlecode/mp4parser/authoring/Movie;

.field track:Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    .line 311
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 319
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;

    .line 321
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    iget-object p1, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
