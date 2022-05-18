.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$5;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->showDialogWhenEditAgendaOnBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 895
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 898
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->exit()V

    .line 899
    return-void
.end method
