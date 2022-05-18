.class public Lcn/nubia/gallery3d/util/MediaSetUtils$NameComparator;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/util/MediaSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/gallery3d/data/MediaSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet;)I
    .locals 2

    .line 876
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 879
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 874
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    check-cast p2, Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/util/MediaSetUtils$NameComparator;->compare(Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet;)I

    move-result p1

    return p1
.end method
