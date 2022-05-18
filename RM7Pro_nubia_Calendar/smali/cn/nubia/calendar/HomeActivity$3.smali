.class Lcn/nubia/calendar/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->asyncCreateCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 425
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$3;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$3;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$200(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->buildCustomDatabase()V

    .line 428
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$3;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$300(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->saveAccountData()V

    .line 429
    return-void
.end method
