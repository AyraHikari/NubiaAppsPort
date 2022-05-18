.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverItemLoader"
.end annotation


# instance fields
.field private mMoveImageView:Lcn/nubia/improve/move/MoveImageView;

.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Lcn/nubia/improve/move/MoveImageView;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 592
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->mMoveImageView:Lcn/nubia/improve/move/MoveImageView;

    .line 594
    iput-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->mMoveImageView:Lcn/nubia/improve/move/MoveImageView;

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;)Lcn/nubia/improve/move/MoveImageView;
    .locals 0

    .line 590
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->mMoveImageView:Lcn/nubia/improve/move/MoveImageView;

    return-object p0
.end method


# virtual methods
.method public loadCompleted(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "nubiashare"

    const-string v1, "CoverItemLoader loadCompleted"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
