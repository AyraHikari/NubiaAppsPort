.class Lcn/nubia/gallery3d/app/CameraPage$7;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->SetAsPrivate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$7;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "CameraPage"

    const-string p2, "set as private confirm"

    .line 677
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 680
    sget-object v0, Lcn/nubia/gallery3d/util/GalleryUtils;->PRIVACY_ACTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "files"

    .line 681
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage$7;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v1, v1, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedFilePaths(IZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 683
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$7;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "set privacy error!"

    .line 685
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
