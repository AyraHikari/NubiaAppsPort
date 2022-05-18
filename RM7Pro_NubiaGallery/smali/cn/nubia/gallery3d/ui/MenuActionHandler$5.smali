.class Lcn/nubia/gallery3d/ui/MenuActionHandler$5;
.super Ljava/lang/Object;
.source "MenuActionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$5;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$5;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 190
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$5;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$500(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    return-void
.end method
