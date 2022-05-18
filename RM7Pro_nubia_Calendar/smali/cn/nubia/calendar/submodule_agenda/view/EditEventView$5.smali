.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 1880
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1883
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    .line 1885
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1884
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1887
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1888
    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1889
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1890
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2602(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1891
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1892
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2702(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1894
    :cond_1
    return-void
.end method
