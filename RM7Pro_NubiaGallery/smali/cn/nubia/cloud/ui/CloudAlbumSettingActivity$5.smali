.class Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;
.super Ljava/lang/Object;
.source "CloudAlbumSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 282
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 285
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 286
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const v0, 0x7f010018

    const v1, 0x7f010019

    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->overridePendingTransition(II)V

    return-void
.end method
