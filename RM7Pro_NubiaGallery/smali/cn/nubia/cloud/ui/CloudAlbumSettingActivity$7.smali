.class Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$7;
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

    .line 300
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$7;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 304
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$7;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$1000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$7;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->access$1000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/commonui/widget/NubiaSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    :cond_0
    return-void
.end method
