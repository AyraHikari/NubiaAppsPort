.class Lcom/zte/mifavor/widget/PagerSecond$1;
.super Landroid/os/Handler;
.source "PagerSecond.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/PagerSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->smoothScrollTo(II)V

    goto :goto_0

    .line 117
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$100(Lcom/zte/mifavor/widget/PagerSecond;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    iget-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$100(Lcom/zte/mifavor/widget/PagerSecond;)Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {p0}, Lcom/zte/mifavor/widget/PagerSecond;->access$300(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PagerSecond"

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler RESET_INTERPOLATOR: replace interpolator error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
