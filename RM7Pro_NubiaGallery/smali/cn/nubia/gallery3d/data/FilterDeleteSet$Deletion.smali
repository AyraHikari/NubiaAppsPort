.class Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deletion"
.end annotation


# instance fields
.field index:I

.field path:Lcn/nubia/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcn/nubia/gallery3d/data/Path;

    .line 55
    iput p2, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    return-void
.end method
