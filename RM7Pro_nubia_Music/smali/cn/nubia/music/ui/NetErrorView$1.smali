.class Lcn/nubia/music/ui/NetErrorView$1;
.super Ljava/lang/Object;
.source "NetErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/NetErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/NetErrorView;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/NetErrorView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/music/ui/NetErrorView$1;->a:Lcn/nubia/music/ui/NetErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/music/ui/NetErrorView$1;->a:Lcn/nubia/music/ui/NetErrorView;

    invoke-static {v0}, Lcn/nubia/music/ui/NetErrorView;->access$000(Lcn/nubia/music/ui/NetErrorView;)Lcn/nubia/music/ui/NetErrorView$RefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRefreshListener !=null is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/music/ui/NetErrorView$1;->a:Lcn/nubia/music/ui/NetErrorView;

    invoke-static {v0}, Lcn/nubia/music/ui/NetErrorView;->access$000(Lcn/nubia/music/ui/NetErrorView;)Lcn/nubia/music/ui/NetErrorView$RefreshListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/music/ui/NetErrorView$1;->a:Lcn/nubia/music/ui/NetErrorView;

    invoke-static {v0}, Lcn/nubia/music/ui/NetErrorView;->access$000(Lcn/nubia/music/ui/NetErrorView;)Lcn/nubia/music/ui/NetErrorView$RefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/ui/NetErrorView$RefreshListener;->refreshData()V

    .line 62
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
