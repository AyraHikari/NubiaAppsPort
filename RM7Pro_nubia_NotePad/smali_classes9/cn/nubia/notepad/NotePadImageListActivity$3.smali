.class Lcn/nubia/notepad/NotePadImageListActivity$3;
.super Ljava/lang/Object;
.source "NotePadImageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageListActivity;->setSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageListActivity;

.field final synthetic val$select:I


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageListActivity$3;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    iput p2, p0, Lcn/nubia/notepad/NotePadImageListActivity$3;->val$select:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$3;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$200(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/view/NotePadGridView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/notepad/NotePadImageListActivity$3;->val$select:I

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadGridView;->setSelection(I)V

    .line 320
    return-void
.end method
