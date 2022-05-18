.class Lcn/nubia/calendar/deftcontroller/TopBarController$1;
.super Ljava/lang/Object;
.source "TopBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/TopBarController;->initDayTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/TopBarController;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$1;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 102
    const-string v0, "CalendarDayView"

    invoke-static {v0}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$1;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->access$000(Lcn/nubia/calendar/deftcontroller/TopBarController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    .line 106
    return-void
.end method
