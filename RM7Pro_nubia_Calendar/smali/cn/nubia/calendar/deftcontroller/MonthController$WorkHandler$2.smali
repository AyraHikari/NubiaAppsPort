.class Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$2;
.super Ljava/lang/Object;
.source "MonthController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$2;->this$1:Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$2;->this$1:Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;

    iget-object v0, v0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$500(Lcn/nubia/calendar/deftcontroller/MonthController;)V

    .line 122
    return-void
.end method
