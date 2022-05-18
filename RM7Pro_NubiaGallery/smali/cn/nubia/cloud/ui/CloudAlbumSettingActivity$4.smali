.class Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;
.super Ljava/lang/Object;
.source "CloudAlbumSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const-string v0, "back_up_toggle"

    invoke-static {p1, v0, p2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$400(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;Ljava/lang/String;Z)V

    .line 261
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1, p2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$502(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;Z)Z

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 263
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$300(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->getBackupState()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$602(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;I)I

    .line 264
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$600(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$700(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$300(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->getBackupState()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 270
    :try_start_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->removeAllUploadTasks(Landroid/content/Context;)V

    .line 271
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$300(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/cloud/backup/Backup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1, p2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$900(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;Z)V

    return-void
.end method
