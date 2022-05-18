.class Lcn/nubia/improve/share/PhotoPageShareManager$2;
.super Ljava/lang/Object;
.source "PhotoPageShareManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;->setTextViewInfoMore(Ljava/util/ArrayList;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

.field final synthetic val$info:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iput-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->val$info:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 381
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->val$info:Ljava/util/ArrayList;

    iput-object v0, p1, Lcn/nubia/improve/share/PhotoPageShareManager;->info_List:Ljava/util/ArrayList;

    .line 382
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$200(Lcn/nubia/improve/share/PhotoPageShareManager;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1001ff

    invoke-static {p1, v1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    .line 385
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$400(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 389
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isEnablePrivacyStatus(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 390
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 391
    iput v0, p1, Landroid/os/Message;->what:I

    .line 392
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v0, v0, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 394
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$500(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    .line 395
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$600(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    .line 396
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$700(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    goto :goto_1

    .line 386
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$2;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100247

    invoke-static {p1, v1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    :cond_4
    :goto_1
    return-void
.end method
