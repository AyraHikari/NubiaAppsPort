.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->showTimezoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

.field final synthetic val$timezoneFooterView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 774
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->val$timezoneFooterView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->val$timezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 779
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/TimezoneAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/TimezoneAdapter;->showAllTimezones()V

    .line 780
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/TimezoneAdapter;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    .line 783
    .local v0, "row":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView$2;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 790
    return-void
.end method
