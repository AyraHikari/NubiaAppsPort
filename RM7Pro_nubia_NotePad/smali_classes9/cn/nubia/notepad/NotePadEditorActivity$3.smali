.class Lcn/nubia/notepad/NotePadEditorActivity$3;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 667
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 670
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->onKilled()V

    .line 674
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$302(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 675
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$402(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 676
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$500(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 677
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$102(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/content/Context;)Landroid/content/Context;

    .line 678
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$3;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$202(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 679
    return-void
.end method
