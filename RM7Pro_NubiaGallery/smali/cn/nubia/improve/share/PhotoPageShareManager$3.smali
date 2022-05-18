.class Lcn/nubia/improve/share/PhotoPageShareManager$3;
.super Ljava/lang/Object;
.source "PhotoPageShareManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;->setTextViewInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;I)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iput p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$800(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcn/nubia/improve/share/PhotoPageShareManager;->click_pos:I

    .line 432
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->val$uid:I

    iput v1, v0, Lcn/nubia/improve/share/PhotoPageShareManager;->click_uid:I

    .line 433
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isEnablePrivacyStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    .line 435
    iput v0, p1, Landroid/os/Message;->what:I

    .line 436
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget-object v0, v0, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$800(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 439
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$500(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    .line 440
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$3;->val$uid:I

    invoke-virtual {v0, p1, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->setShareItemClick(II)V

    :goto_0
    return-void
.end method
