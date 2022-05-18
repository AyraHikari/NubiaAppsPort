.class Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$1;
.super Landroid/os/Handler;
.source "CloudAlbumBackupSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$100(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/cloud/ui/AlbumInfo;

    .line 73
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$1;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {v0, p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$000(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Lcn/nubia/cloud/ui/AlbumInfo;)V

    :goto_0
    return-void
.end method
