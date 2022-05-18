.class Lcn/nubia/improve/share/PhotoPageShareManager$7;
.super Landroid/os/Handler;
.source "PhotoPageShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 873
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->resetData()V

    .line 883
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1300(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 884
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1300(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;->onResetData()V

    goto :goto_0

    .line 875
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1300(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 876
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1300(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;->onLeaveShareMode()V

    .line 878
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$7;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->resetData()V

    :cond_3
    :goto_0
    return-void
.end method
