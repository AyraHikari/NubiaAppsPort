.class Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field indexHint:I

.field path:Lcn/nubia/gallery3d/data/Path;

.field type:I


# direct methods
.method public constructor <init>(ILcn/nubia/gallery3d/data/Path;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->type:I

    .line 45
    iput-object p2, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->path:Lcn/nubia/gallery3d/data/Path;

    .line 46
    iput p3, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->indexHint:I

    return-void
.end method
