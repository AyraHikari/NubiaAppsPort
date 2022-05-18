.class Lcn/nubia/calendar/EventInfoFragment$19;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->showRepeatsDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 3001
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$19;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3006
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$19;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0, p2}, Lcn/nubia/calendar/EventInfoFragment;->access$4602(Lcn/nubia/calendar/EventInfoFragment;I)I

    .line 3008
    sget-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$19;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-object v1, v1, Lcn/nubia/calendar/EventInfoFragment;->mReminderMethodLabel:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    .line 3009
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3010
    sput p2, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 3013
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3014
    return-void
.end method
