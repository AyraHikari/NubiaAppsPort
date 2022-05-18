.class Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;
.super Ljava/lang/Object;
.source "NotePadPlayerViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadPlayerViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .prologue
    .line 299
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 302
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-static {v2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->access$000(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 303
    .local v0, "currentPosition":I
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-static {v2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->access$100(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v3, v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-static {v2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->access$000(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 305
    .local v1, "maxProgress":I
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-static {v2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->access$200(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/widget/SeekBar;

    move-result-object v2

    div-int/lit16 v3, v1, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 306
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-static {v2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->access$200(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/widget/SeekBar;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 307
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    iget-object v2, v2, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    iget-object v3, v3, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method
