.class Lcn/nubia/gallery3d/app/CameraPage$14;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->updateSelectButton()V
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

    .line 1220
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$14;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1223
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$14;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 1224
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$14;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$700(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->setAllMenuEnabled(Z)V

    return-void
.end method
