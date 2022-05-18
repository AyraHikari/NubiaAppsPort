.class Lcn/nubia/notepad/NotePadEditorActivity$22;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->createRemindDialog(Z)V
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
    .line 3132
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$22;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3135
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$22;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5400(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3136
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$22;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5400(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->dismiss()V

    .line 3137
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$22;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5402(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 3139
    :cond_0
    return-void
.end method
