.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$9;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->displayEditWhichDialog()V
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
    .line 1036
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$9;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1039
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$9;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1040
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1043
    :cond_0
    return-void
.end method
