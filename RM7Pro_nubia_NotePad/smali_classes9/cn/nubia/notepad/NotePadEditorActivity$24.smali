.class Lcn/nubia/notepad/NotePadEditorActivity$24;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->createDeleteDialog()V
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
    .line 3166
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$24;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3169
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$24;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5500(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3170
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/notepad/SysApplication;->getAcitivitiesSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3171
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$24;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$5600(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3173
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$24;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    .line 3174
    return-void
.end method
