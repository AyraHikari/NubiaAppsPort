.class public Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAlbumChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public albumChanged()V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MyAlbumChange mCloudAlbumSet count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1400(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->getSubMediaSetCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nubiashare"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1500(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/improve/move/MoveScroll;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1500(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/improve/move/MoveScroll;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1400(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/improve/move/MoveScroll;->setSource(Lcn/nubia/gallery3d/data/MediaSet;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1600(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    .line 450
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange$1;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
