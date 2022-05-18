.class Lcn/nubia/calendar/deftcontroller/TopBarController$2;
.super Ljava/lang/Object;
.source "TopBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/TopBarController;->initWeekTextView()V
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
    .line 112
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$2;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    const-string v0, "CalendarWeekView"

    invoke-static {v0}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$2;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->access$000(Lcn/nubia/calendar/deftcontroller/TopBarController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    .line 118
    return-void
.end method
