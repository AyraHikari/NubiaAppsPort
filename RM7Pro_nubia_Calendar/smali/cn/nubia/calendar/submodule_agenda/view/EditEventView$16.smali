.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->showRepeatsDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

.field final synthetic val$reminderMethodLabel:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 3525
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;->val$reminderMethodLabel:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3531
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3532
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0, p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3502(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;I)I

    .line 3533
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$16;->val$reminderMethodLabel:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    .line 3534
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3535
    sput p2, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 3537
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3538
    return-void
.end method
