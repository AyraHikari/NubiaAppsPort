.class Lcn/nubia/touping/Utils/DialogManager$14;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->dialogList(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 401
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$14;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$14;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$700(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/View/ListViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->getListview()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$14;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$700(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/View/ListViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->addResearchCount()V

    .line 410
    :goto_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$14;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    .line 422
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$14;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$700(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/View/ListViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->resetResearchCount()V

    goto :goto_0
.end method
