.class Lcn/nubia/notepad/NotePadShareActivity$5$1;
.super Ljava/lang/Object;
.source "NotePadShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadShareActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/notepad/NotePadShareActivity$5;

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadShareActivity$5;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/notepad/NotePadShareActivity$5;

    .prologue
    .line 615
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity$5$1;->this$1:Lcn/nubia/notepad/NotePadShareActivity$5;

    iput-boolean p2, p0, Lcn/nubia/notepad/NotePadShareActivity$5$1;->val$ok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadShareActivity$5$1;->val$ok:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$5$1;->this$1:Lcn/nubia/notepad/NotePadShareActivity$5;

    iget-object v0, v0, Lcn/nubia/notepad/NotePadShareActivity$5;->val$callback:Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;

    invoke-interface {v0}, Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;->onSucceed()V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$5$1;->this$1:Lcn/nubia/notepad/NotePadShareActivity$5;

    iget-object v0, v0, Lcn/nubia/notepad/NotePadShareActivity$5;->val$callback:Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;

    invoke-interface {v0}, Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;->onError()V

    goto :goto_0
.end method
