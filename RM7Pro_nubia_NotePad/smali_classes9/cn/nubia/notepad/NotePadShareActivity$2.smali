.class Lcn/nubia/notepad/NotePadShareActivity$2;
.super Ljava/lang/Object;
.source "NotePadShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadShareActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadShareActivity;

.field final synthetic val$mNoteId:I


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadShareActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity$2;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    iput p2, p0, Lcn/nubia/notepad/NotePadShareActivity$2;->val$mNoteId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$2;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    iget v1, p0, Lcn/nubia/notepad/NotePadShareActivity$2;->val$mNoteId:I

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$400(Lcn/nubia/notepad/NotePadShareActivity;I)V

    .line 234
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$2;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method
