.class Lcn/nubia/camera/multiRecord/h$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/h;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/multiRecord/h;Landroid/os/Looper;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$c;->a:Lcn/nubia/camera/multiRecord/h;

    .line 739
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 744
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiRecordManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h$c;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/h;->l(Lcn/nubia/camera/multiRecord/h;)V

    :goto_0
    return-void
.end method
