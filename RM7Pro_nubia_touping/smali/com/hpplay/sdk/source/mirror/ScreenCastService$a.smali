.class Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/ScreenCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mirror/ScreenCastService;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 1

    .prologue
    .line 828
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->b:Ljava/lang/ref/WeakReference;

    .line 830
    return-void
.end method

.method private a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    .line 840
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public onError(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 908
    const-string v0, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError --- > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Z)V

    .line 910
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 912
    iput-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 915
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i;

    .line 916
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    const/16 v1, 0xc

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->sendEmptyMessageDelayed(IJ)Z

    .line 918
    :cond_1
    return-void
.end method

.method public onInfo(II)V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    .line 897
    :cond_0
    return-void
.end method

.method public onInfo(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(ILjava/lang/String;)V

    .line 904
    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 863
    const-string v0, "ScreenCastService"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    .line 867
    :cond_0
    return-void
.end method

.method public onPositionUpdate(JJ)V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method public onSeekComplete(I)V
    .locals 0

    .prologue
    .line 890
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "ScreenCastService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Z)V

    .line 855
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->removeMessages(I)V

    .line 859
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 876
    const-string v0, "ScreenCastService"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Z)V

    .line 878
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 881
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 882
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i;

    .line 883
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->a()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    const/16 v1, 0xc

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->sendEmptyMessageDelayed(IJ)Z

    .line 885
    :cond_1
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->c:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 834
    return-void
.end method
