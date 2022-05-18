.class Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$4;
.super Ljava/lang/Object;
.source "CloudAlbumBackupSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->initView()V
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

    .line 142
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-virtual {p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->finish()V

    .line 148
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$4;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    const v0, 0x7f010016

    const v1, 0x7f010017

    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->overridePendingTransition(II)V

    return-void
.end method
