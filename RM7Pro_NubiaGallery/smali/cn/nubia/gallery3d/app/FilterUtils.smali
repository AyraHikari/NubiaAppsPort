.class public Lcn/nubia/gallery3d/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field public static final CLUSTER_BY_ALBUM:I = 0x1

.field public static final CLUSTER_BY_FACE:I = 0x20

.field public static final CLUSTER_BY_LOCATION:I = 0x4

.field public static final CLUSTER_BY_MARK:I = 0x200

.field public static final CLUSTER_BY_SIZE:I = 0x10

.field public static final CLUSTER_BY_TAG:I = 0x8

.field public static final CLUSTER_BY_TIME:I = 0x2

.field private static final CLUSTER_CURRENT_TYPE:I = 0x4

.field private static final CLUSTER_TYPE:I = 0x0

.field private static final CLUSTER_TYPE_F:I = 0x2

.field public static final FILTER_ALL:I = 0x100

.field private static final FILTER_CURRENT_TYPE:I = 0x5

.field public static final FILTER_IMAGE_ONLY:I = 0x40

.field private static final FILTER_TYPE:I = 0x1

.field private static final FILTER_TYPE_F:I = 0x3

.field public static final FILTER_VIDEO_ONLY:I = 0x80

.field private static final TAG:Ljava/lang/String; = "FilterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppliedFilters(Lcn/nubia/gallery3d/data/Path;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/app/FilterUtils;->getAppliedFilters(Lcn/nubia/gallery3d/data/Path;[IZ)V

    return-void
.end method

.method private static getAppliedFilters(Lcn/nubia/gallery3d/data/Path;[IZ)V
    .locals 5

    .line 122
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 124
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 125
    aget-object v2, p0, v1

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    aget-object v2, p0, v1

    invoke-static {v2}, Lcn/nubia/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v3, v0

    .line 127
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 128
    aget-object v4, v2, v3

    invoke-static {v4}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 129
    invoke-static {v4, p1, p2}, Lcn/nubia/gallery3d/app/FilterUtils;->getAppliedFilters(Lcn/nubia/gallery3d/data/Path;[IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    aget-object v1, p0, v0

    const-string v2, "cluster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 p2, 0x1

    :cond_2
    const/4 v1, 0x2

    .line 141
    aget-object p0, p0, v1

    invoke-static {p0}, Lcn/nubia/gallery3d/app/FilterUtils;->toClusterType(Ljava/lang/String;)I

    move-result p0

    .line 142
    aget v3, p1, v0

    or-int/2addr v3, p0

    aput v3, p1, v0

    .line 143
    aput p0, p1, v2

    if-eqz p2, :cond_3

    .line 145
    aget p2, p1, v1

    or-int/2addr p0, p2

    aput p0, p1, v1

    :cond_3
    return-void
.end method

.method public static newClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const-string p1, "mark"

    goto :goto_0

    :cond_1
    const-string p1, "face"

    goto :goto_0

    :cond_2
    const-string p1, "size"

    goto :goto_0

    :cond_3
    const-string p1, "tag"

    goto :goto_0

    :cond_4
    const-string p1, "location"

    goto :goto_0

    :cond_5
    const-string p1, "time"

    .line 219
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cluster/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 190
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/filter/mediatype/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 235
    invoke-static {p0, v0}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 239
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return-object p0

    .line 241
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 242
    aget-object v2, v1, v0

    const-string v3, "cluster"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 243
    aput-boolean v3, p1, v0

    .line 244
    aget-object p0, v1, v3

    invoke-static {p0}, Lcn/nubia/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 247
    :cond_1
    aget-object v2, v1, v0

    const-string v4, "filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v1, v3

    const-string v3, "mediatype"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    invoke-static {p0}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    .line 251
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_6

    const-string v3, "/"

    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    aget-object v3, v1, v2

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    aget-object v3, v1, v2

    invoke-static {v3}, Lcn/nubia/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 256
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    if-lez v4, :cond_3

    const-string v5, ","

    .line 258
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    aget-object v5, v3, v4

    invoke-static {v5, p1}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "}"

    .line 262
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 264
    :cond_5
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 273
    invoke-static {p0, v0}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 277
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return-object p0

    .line 279
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 280
    aget-object v2, v1, v0

    const-string v3, "filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    const-string v4, "mediatype"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    aput-boolean v2, p1, v0

    const/4 p0, 0x3

    .line 282
    aget-object p0, v1, p0

    invoke-static {p0}, Lcn/nubia/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 285
    :cond_1
    aget-object v2, v1, v0

    const-string v3, "cluster"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-static {p0}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 288
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    .line 289
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_6

    const-string v3, "/"

    .line 290
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    aget-object v3, v1, v2

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 292
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    aget-object v3, v1, v2

    invoke-static {v3}, Lcn/nubia/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 294
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    if-lez v4, :cond_3

    const-string v5, ","

    .line 296
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    aget-object v5, v3, v4

    invoke-static {v5, p1}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "}"

    .line 300
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 302
    :cond_5
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setMenuItemApplied(Lcn/nubia/gallery3d/app/GalleryActionBar;IZZ)V
    .locals 0

    return-void
.end method

.method private static setMenuItemAppliedEnabled(Lcn/nubia/gallery3d/app/GalleryActionBar;IZZZ)V
    .locals 0

    return-void
.end method

.method public static setupMenuItems(Lcn/nubia/gallery3d/app/GalleryActionBar;Lcn/nubia/gallery3d/data/Path;Z)V
    .locals 0

    return-void
.end method

.method public static switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 229
    invoke-static {p0}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 224
    invoke-static {p0}, Lcn/nubia/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toClusterType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "time"

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "location"

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string v0, "tag"

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const-string v0, "size"

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x10

    return p0

    :cond_3
    const-string v0, "face"

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x20

    return p0

    :cond_4
    const-string v0, "mark"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x200

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
