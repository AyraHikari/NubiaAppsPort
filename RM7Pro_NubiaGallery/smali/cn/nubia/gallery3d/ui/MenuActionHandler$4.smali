.class Lcn/nubia/gallery3d/ui/MenuActionHandler$4;
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

    .line 152
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 155
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/gallery3d/app/DialogPicker;

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/external/images/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/RecycledData;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 165
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$4;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->enterSelectionDoneMode()V

    :goto_0
    return-void
.end method
