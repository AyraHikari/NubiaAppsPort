.class Lcn/nubia/gallery3d/ui/MenuActionHandler$7;
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

    .line 217
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$7;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$7;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAllButtonClick()V

    return-void
.end method
