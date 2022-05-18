.class Lcn/nubia/gallery3d/data/DataManager$DateTakenComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTakenComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/gallery3d/data/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/DataManager$1;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/DataManager$DateTakenComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/gallery3d/data/MediaItem;Lcn/nubia/gallery3d/data/MediaItem;)I
    .locals 2

    .line 110
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcn/nubia/gallery3d/common/Utils;->compare(JJ)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 108
    check-cast p1, Lcn/nubia/gallery3d/data/MediaItem;

    check-cast p2, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/DataManager$DateTakenComparator;->compare(Lcn/nubia/gallery3d/data/MediaItem;Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result p1

    return p1
.end method
