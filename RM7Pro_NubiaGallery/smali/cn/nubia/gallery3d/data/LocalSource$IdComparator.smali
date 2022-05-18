.class Lcn/nubia/gallery3d/data/LocalSource$IdComparator;
.super Ljava/lang/Object;
.source "LocalSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/gallery3d/data/MediaSource$PathId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/LocalSource$1;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/LocalSource$IdComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/gallery3d/data/MediaSource$PathId;Lcn/nubia/gallery3d/data/MediaSource$PathId;)I
    .locals 2

    .line 324
    iget-object p1, p1, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object p2, p2, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p2

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 327
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 333
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 322
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    check-cast p2, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/LocalSource$IdComparator;->compare(Lcn/nubia/gallery3d/data/MediaSource$PathId;Lcn/nubia/gallery3d/data/MediaSource$PathId;)I

    move-result p1

    return p1
.end method
