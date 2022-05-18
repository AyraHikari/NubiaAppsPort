.class Lcn/nubia/improve/xcloud/CloudManager$5;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->doUseMobileData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 554
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ok"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1100(Lcn/nubia/improve/xcloud/CloudManager;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1100(Lcn/nubia/improve/xcloud/CloudManager;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1100(Lcn/nubia/improve/xcloud/CloudManager;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1100(Lcn/nubia/improve/xcloud/CloudManager;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 559
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1500(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/util/ArrayList;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1600(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/ArrayList;J)V

    .line 560
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1000(Lcn/nubia/improve/xcloud/CloudManager;)V

    goto :goto_1

    .line 556
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1200(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$1300(Lcn/nubia/improve/xcloud/CloudManager;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1400(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/HashMap;J)V

    .line 557
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$5;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1000(Lcn/nubia/improve/xcloud/CloudManager;)V

    :cond_3
    :goto_1
    return-void
.end method
