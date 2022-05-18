.class Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;
.super Ljava/lang/Object;
.source "CalendarAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->createListView([Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .prologue
    .line 279
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$000(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 284
    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 285
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->access$100(Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog$1;->this$0:Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->dismiss()V

    .line 288
    :cond_0
    return-void
.end method
