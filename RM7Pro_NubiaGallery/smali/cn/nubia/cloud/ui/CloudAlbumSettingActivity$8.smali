.class Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$8;
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

    .line 310
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$8;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 313
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://account.nubia.com/res/html/gallery_privacy.html"

    .line 314
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$8;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 317
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$8;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const v0, 0x7f010018

    const v1, 0x7f010019

    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->overridePendingTransition(II)V

    return-void
.end method
