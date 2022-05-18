.class Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$6;
.super Ljava/lang/Object;
.source "CloudAlbumBackupSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->showAlbum(Lcn/nubia/cloud/ui/AlbumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

.field final synthetic val$selectAlbumSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Lcn/nubia/commonui/widget/NubiaSwitch;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$6;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$6;->val$selectAlbumSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$6;->val$selectAlbumSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    return-void
.end method
