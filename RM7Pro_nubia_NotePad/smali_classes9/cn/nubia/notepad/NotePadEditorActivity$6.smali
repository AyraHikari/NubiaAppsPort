.class Lcn/nubia/notepad/NotePadEditorActivity$6;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->doSave()V
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
    .line 1190
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$6;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$6;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$500(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1194
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$6;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$600(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1195
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$6;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewMode(ZI)V

    .line 1196
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$6;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$202(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 1197
    return-void
.end method
