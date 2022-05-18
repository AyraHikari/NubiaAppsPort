.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;
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
    .line 1929
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1932
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 1934
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1935
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1936
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1937
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1938
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderMethod:Landroid/widget/TextView;

    .line 1939
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1938
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1940
    move v1, v0

    .line 1937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1943
    :cond_1
    const-string v3, "reminder_method_value"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1944
    const-string v3, "methodName"

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->repeatArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1946
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1948
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1950
    :catch_0
    move-exception v3

    goto :goto_1
.end method
