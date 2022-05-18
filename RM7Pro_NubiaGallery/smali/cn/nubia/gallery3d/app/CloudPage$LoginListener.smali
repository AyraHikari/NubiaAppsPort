.class Lcn/nubia/gallery3d/app/CloudPage$LoginListener;
.super Ljava/lang/Object;
.source "CloudPage.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CloudPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/app/CloudPage$1;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    return-void
.end method


# virtual methods
.method public loginCompleted()V
    .locals 2

    const-string v0, "CloudPage"

    const-string v1, " cloudpage loginCompleted==========="

    .line 820
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loginError()V
    .locals 3

    .line 830
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateStorage(Ljava/lang/String;)V
    .locals 0

    .line 825
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoginListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$700(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method
