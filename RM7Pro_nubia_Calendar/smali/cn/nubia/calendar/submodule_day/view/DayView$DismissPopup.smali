.class Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 6294
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6297
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6299
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$DismissPopup;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4800(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6305
    :cond_0
    :goto_0
    return-void

    .line 6300
    :catch_0
    move-exception v0

    .line 6302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
