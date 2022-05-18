.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;
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
    .line 2572
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 2576
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/model/CalendarEventModel;

    move-result-object v1

    .line 2577
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v0

    .line 2578
    .local v0, "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->setPicturePath(Ljava/lang/String;)V

    .line 2579
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;

    .line 2580
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2581
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mChoosePicture:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2582
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$13;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2583
    return-void
.end method
