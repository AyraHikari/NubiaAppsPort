.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->showCalendarsAccountDialog(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

.field final synthetic val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 2143
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2148
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_0

    .line 2149
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->refreshCount()V

    .line 2152
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2153
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1, p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3102(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;I)I

    .line 2154
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2157
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, p2

    .line 2158
    .local v0, "calendarName":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->val$editEventView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mCalendarsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$9;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2161
    return-void
.end method
