.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$notSynced:Z


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 1018
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iput-boolean p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->val$notSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1021
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->val$notSynced:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    iput v0, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 1023
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    if-ne v0, v1, :cond_0

    .line 1024
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->val$notSynced:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 1026
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v2, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    iput-wide v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    .line 1028
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModification(I)V

    .line 1029
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1100(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1030
    return-void

    :cond_1
    move v0, v1

    .line 1021
    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$8;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    goto :goto_1
.end method
