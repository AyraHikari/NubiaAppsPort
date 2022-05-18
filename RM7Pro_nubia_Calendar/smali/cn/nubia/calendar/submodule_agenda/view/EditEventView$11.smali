.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;
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
    .line 2460
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2463
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mReminderTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2465
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$11;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2466
    return-void
.end method
