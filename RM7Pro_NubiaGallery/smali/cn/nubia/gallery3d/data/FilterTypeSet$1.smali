.class Lcn/nubia/gallery3d/data/FilterTypeSet$1;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/FilterTypeSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/FilterTypeSet;

.field final synthetic val$buf:[Lcn/nubia/gallery3d/data/Path;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/FilterTypeSet;I[Lcn/nubia/gallery3d/data/Path;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet$1;->this$0:Lcn/nubia/gallery3d/data/FilterTypeSet;

    iput p2, p0, Lcn/nubia/gallery3d/data/FilterTypeSet$1;->val$total:I

    iput-object p3, p0, Lcn/nubia/gallery3d/data/FilterTypeSet$1;->val$buf:[Lcn/nubia/gallery3d/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcn/nubia/gallery3d/data/MediaItem;)V
    .locals 2

    .line 102
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet$1;->this$0:Lcn/nubia/gallery3d/data/FilterTypeSet;

    invoke-static {v1}, Lcn/nubia/gallery3d/data/FilterTypeSet;->access$000(Lcn/nubia/gallery3d/data/FilterTypeSet;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_1

    .line 103
    iget v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet$1;->val$total:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 105
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet$1;->val$buf:[Lcn/nubia/gallery3d/data/Path;

    aput-object p2, v0, p1

    nop

    :cond_1
    :goto_0
    return-void
.end method
