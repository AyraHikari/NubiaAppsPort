.class public final Lcom/loc/e$a;
.super Landroid/os/Handler;
.source "ApsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/e;


# direct methods
.method public constructor <init>(Lcom/loc/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    iget-object v5, v4, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/loc/ej;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/loc/e;->l:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    const/16 v4, 0x836

    invoke-static {v0, v4}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const-string v0, "invalid handlder scode!!!#1002"

    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    new-instance v4, Lcom/loc/dm;

    invoke-direct {v4}, Lcom/loc/dm;-><init>()V

    const-string v5, "#1002"

    invoke-virtual {v4, v5}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    const-string v5, "conitue"

    invoke-virtual {v4, v5}, Lcom/loc/dm;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/ds;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v0, v6, v4}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_2
    const-string v4, "ApsServiceCore"

    const-string v5, "ActionHandler handlerMessage"

    invoke-static {v0, v4, v5}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_3
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2, v1}, Lcom/loc/e;->b(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-boolean v1, v0, Lcom/loc/e;->r:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/loc/e$c;

    invoke-direct {v1, v0}, Lcom/loc/e$c;-><init>(Lcom/loc/e;)V

    iput-object v1, v0, Lcom/loc/e;->s:Lcom/loc/e$c;

    iget-object v1, v0, Lcom/loc/e;->s:Lcom/loc/e$c;

    invoke-virtual {v1}, Lcom/loc/e$c;->start()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/e;->r:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "ApsServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/e;->b()V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->a(Lcom/loc/e;)V

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0, v2, v1}, Lcom/loc/e;->a(Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_7
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/e;->c()V

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Messenger;)V

    goto/16 :goto_3

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->c(Lcom/loc/e;)V

    goto/16 :goto_3

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    iget-object v0, v0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0}, Lcom/loc/dn;->h()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
