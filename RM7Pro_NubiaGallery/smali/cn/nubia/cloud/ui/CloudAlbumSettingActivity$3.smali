.class Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$3;
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

    .line 248
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$3;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 251
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$3;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->finish()V

    .line 252
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$3;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    const v0, 0x7f010016

    const v1, 0x7f010017

    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->overridePendingTransition(II)V

    return-void
.end method
