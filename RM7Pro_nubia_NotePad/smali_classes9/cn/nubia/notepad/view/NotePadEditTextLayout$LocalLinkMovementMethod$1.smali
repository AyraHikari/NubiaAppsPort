.class Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;
.super Ljava/lang/Object;
.source "NotePadEditTextLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    .prologue
    .line 487
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->access$010(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)I

    .line 492
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->access$000(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->access$100(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->access$200(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->access$300(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
