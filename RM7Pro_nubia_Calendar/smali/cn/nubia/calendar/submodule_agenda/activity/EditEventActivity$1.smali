.class Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity$1;
.super Ljava/lang/Object;
.source "EditEventActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->showDialogWhenEditAgendaOnBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->onBack()V

    .line 295
    return-void
.end method
