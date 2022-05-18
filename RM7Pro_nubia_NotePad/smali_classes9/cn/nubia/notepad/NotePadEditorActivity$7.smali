.class Lcn/nubia/notepad/NotePadEditorActivity$7;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->observeTitleChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldTitle:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 1269
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->val$title:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->oldTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 1282
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->oldTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$702(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 1283
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$700(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$7;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$800(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1282
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 1274
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 1278
    return-void
.end method
