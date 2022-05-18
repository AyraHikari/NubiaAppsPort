.class Lcn/nubia/calendar/submodule_day/view/DayView$8;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 6414
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$8;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 6418
    if-nez p2, :cond_0

    .line 6419
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$8;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    new-instance v1, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$8;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 6421
    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedPressTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView$8;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-boolean v6, v6, Lcn/nubia/calendar/submodule_day/view/DayView;->mSelectionAllday:Z

    if-eqz v6, :cond_1

    const-wide/16 v8, 0x10

    :goto_0
    move-wide v6, v2

    invoke-direct/range {v1 .. v9}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    .line 6419
    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3600(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    .line 6426
    :cond_0
    return-void

    :cond_1
    move-wide v8, v2

    .line 6421
    goto :goto_0
.end method
