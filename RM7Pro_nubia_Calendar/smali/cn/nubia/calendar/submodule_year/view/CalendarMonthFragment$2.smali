.class Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$2;
.super Ljava/lang/Object;
.source "CalendarMonthFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$2;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$2;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$000(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    const/4 v0, 0x0

    return v0
.end method
