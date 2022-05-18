.class Lcn/nubia/gallery3d/data/GridCoverItem$GridSpec;
.super Ljava/lang/Object;
.source "GridCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/GridCoverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridSpec"
.end annotation


# instance fields
.field public backgroundColor:I

.field public gap:I

.field public gray:Z

.field public rowCount:I

.field final synthetic this$0:Lcn/nubia/gallery3d/data/GridCoverItem;

.field public tileSize:I


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/data/GridCoverItem;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/gallery3d/data/GridCoverItem$GridSpec;->this$0:Lcn/nubia/gallery3d/data/GridCoverItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
