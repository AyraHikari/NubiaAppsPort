.class Lcn/nubia/improve/share/PhotoPageShareManager$5;
.super Ljava/lang/Object;
.source "PhotoPageShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;->process(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

.field final synthetic val$isMore:Z


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;Z)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iput-boolean p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->val$isMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "PhotoPageShareManager"

    .line 526
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v1, v1, Lcn/nubia/improve/share/PhotoPageShareManager;->new_Uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 527
    :goto_0
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 528
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v2, v3}, Lcn/nubia/improve/share/NubiaShareUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 529
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    .line 530
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 531
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcn/nubia/improve/share/NubiaShareUtils;->getOutFilePatch(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    :try_start_1
    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v4}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v5}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v4, v5}, Lcn/nubia/improve/share/NubiaShareUtils;->IsImage(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    invoke-static {v2, v3}, Lcn/nubia/improve/share/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 535
    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v4}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/improve/share/NubiaShareUtils;->getLocalUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 537
    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v4, v4, Lcn/nubia/improve/share/PhotoPageShareManager;->new_Uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    :cond_0
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v3, v3, Lcn/nubia/improve/share/PhotoPageShareManager;->new_Uris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v4}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "getLocalUri have error occurs"

    .line 540
    invoke-static {v0, v3}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 543
    :cond_1
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v3, v3, Lcn/nubia/improve/share/PhotoPageShareManager;->new_Uris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v4}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    .line 546
    iput v4, v3, Landroid/os/Message;->what:I

    .line 547
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 548
    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v4, v4, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 550
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImage failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 556
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v2, v2, Lcn/nubia/improve/share/PhotoPageShareManager;->new_Uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 557
    iget-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->val$isMore:Z

    if-nez v1, :cond_4

    .line 558
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    .line 559
    iput v2, v1, Landroid/os/Message;->what:I

    .line 560
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v2, v2, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 562
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    .line 563
    iput v2, v1, Landroid/os/Message;->what:I

    .line 564
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$5;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v2, v2, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
