.class Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;
.super Ljava/lang/Object;
.source "AlertInCaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 269
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 270
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 271
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$300(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;J)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->finish()V

    .line 274
    return-void
.end method
