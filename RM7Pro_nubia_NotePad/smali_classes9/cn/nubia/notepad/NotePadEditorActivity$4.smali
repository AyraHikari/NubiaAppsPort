.class Lcn/nubia/notepad/NotePadEditorActivity$4;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->onClick(Landroid/view/View;)V
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
    .line 1065
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$4;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$4;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->onBackPressed()V

    .line 1069
    return-void
.end method
