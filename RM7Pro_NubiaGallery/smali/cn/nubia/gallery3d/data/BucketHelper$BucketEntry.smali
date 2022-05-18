.class public Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/BucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public cover:Lcn/nubia/gallery3d/data/MediaItem;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    .line 66
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 76
    instance-of v0, p1, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast p1, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;

    .line 80
    iget v0, p0, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget p1, p1, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 71
    iget v0, p0, Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    return v0
.end method
