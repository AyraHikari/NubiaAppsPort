.class Lcn/nubia/notepad/NoteListActivity$12;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->searchNote()V
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
    .line 1221
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$12;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$12;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1600(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$12;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$800(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1226
    return-void
.end method
