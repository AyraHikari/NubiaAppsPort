.class Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread$1;
.super Ljava/lang/Object;
.source "QuickResponseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;

    .prologue
    .line 145
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread$1;->this$1:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread$1;->this$1:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    const v1, 0x7f0c0078

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread$1;->this$1:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity$QueryThread;->this$0:Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_alerts/QuickResponseActivity;->finish()V

    .line 153
    return-void
.end method
