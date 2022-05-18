.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$12;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModel(Lcn/nubia/calendar/model/CalendarEventModel;)V
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
    .line 2472
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$12;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2475
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$12;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$12;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 2476
    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2475
    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 2477
    return-void

    .line 2476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
