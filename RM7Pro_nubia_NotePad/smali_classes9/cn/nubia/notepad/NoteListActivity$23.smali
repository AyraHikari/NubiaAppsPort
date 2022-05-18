.class Lcn/nubia/notepad/NoteListActivity$23;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->showSyncPemitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 2012
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$23;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2017
    packed-switch p2, :pswitch_data_0

    .line 2026
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2027
    return-void

    .line 2019
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$23;->this$0:Lcn/nubia/notepad/NoteListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/notepad/NoteListActivity;->access$5102(Lcn/nubia/notepad/NoteListActivity;Z)Z

    .line 2020
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$23;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$5200(Lcn/nubia/notepad/NoteListActivity;)V

    .line 2021
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$23;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->startLoadingAnimation()V

    goto :goto_0

    .line 2017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
