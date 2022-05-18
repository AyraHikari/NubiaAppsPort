.class Lcn/nubia/camera/a$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/a$1;->a:Lcn/nubia/camera/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "level"

    .line 60
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "scale"

    const/16 v1, 0x64

    .line 61
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/a$1;->a:Lcn/nubia/camera/a;

    mul-int/2addr p1, v1

    div-int/2addr p1, p2

    invoke-static {v0, p1}, Lcn/nubia/camera/a;->a(Lcn/nubia/camera/a;I)I

    .line 64
    iget-object p1, p0, Lcn/nubia/camera/a$1;->a:Lcn/nubia/camera/a;

    invoke-static {p1}, Lcn/nubia/camera/a;->a(Lcn/nubia/camera/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a$a;

    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/a$1;->a:Lcn/nubia/camera/a;

    invoke-static {v0}, Lcn/nubia/camera/a;->b(Lcn/nubia/camera/a;)I

    move-result v0

    invoke-interface {p2, v0}, Lcn/nubia/camera/a$a;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
