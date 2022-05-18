.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;

.field final synthetic val$row:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;

    .prologue
    .line 783
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;

    iput p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;->val$row:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;->val$row:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 787
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;->val$row:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 788
    return-void
.end method
