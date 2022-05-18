.class Lcn/nubia/gallery3d/data/MultiShootItem$1;
.super Ljava/lang/Object;
.source "MultiShootItem.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalPaths()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/MultiShootItem;

.field final synthetic val$paths:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/MultiShootItem;Ljava/util/ArrayList;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem$1;->this$0:Lcn/nubia/gallery3d/data/MultiShootItem;

    iput-object p2, p0, Lcn/nubia/gallery3d/data/MultiShootItem$1;->val$paths:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcn/nubia/gallery3d/data/MultiShootItem$1;->val$paths:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
