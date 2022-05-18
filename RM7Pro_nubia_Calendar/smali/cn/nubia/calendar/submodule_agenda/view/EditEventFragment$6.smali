.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$6;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 991
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 995
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 996
    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 997
    .local v0, "a":Landroid/app/Activity;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$6;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 998
    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1001
    :cond_0
    return-void
.end method
