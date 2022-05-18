.class Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;
.super Ljava/lang/Object;
.source "AgendaFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .prologue
    .line 129
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    .line 132
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$2;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 134
    return-void
.end method
